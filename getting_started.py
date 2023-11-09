import pandas as pd
from simple_salesforce import Salesforce, SalesforceLogin
import os
import boto3
from botocore.exceptions import NoCredentialsError

# Salesforce authentication
# Retrieve Salesforce credentials from GitHub repository secrets
username = os.environ.get('SALESFORCE_USERNAME')
password = os.environ.get('SALESFORCE_PASSWORD')
security_token = os.environ.get('SALESFORCE_SECURITY_TOKEN')
domain = "login"

session_id, instance = SalesforceLogin(username=username, password=password, security_token=security_token, domain=domain)
sf = Salesforce(instance=instance, session_id=session_id)

# Fetch metadata
metadata_org = sf.describe()

# Save metadata to CSV
df_sobjects = pd.DataFrame(metadata_org['sobjects'])
df_sobjects.to_csv('org_metadata_info.csv', index=False)

# Amazon S3 settings
s3_bucket_name = 'aaa-poc-sagar'
s3_file_key = 'org_metadata_info.csv'

# Upload the CSV file to Amazon S3
def upload_to_s3(local_file, s3_bucket, s3_key):
    try:
        s3 = boto3.client('s3')
        s3.upload_file(local_file, s3_bucket, s3_key)
        print(f'File uploaded to S3: s3://{s3_bucket}/{s3_key}')
    except NoCredentialsError:
        print("AWS credentials not available.")

# Upload the CSV file to S3
upload_to_s3('org_metadata_info.csv', s3_bucket_name, s3_file_key)
