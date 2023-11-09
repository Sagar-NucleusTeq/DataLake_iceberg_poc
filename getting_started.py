import pandas as pd
from simple_salesforce import Salesforce, SalesforceLogin, SFType
import os
import boto3
from botocore.exceptions import NoCredentialsError

# Retrieve Salesforce credentials from GitHub repository secrets
# username = os.environ.get('SALESFORCE_USERNAME')
# password = os.environ.get('SALESFORCE_PASSWORD')
# security_token = os.environ.get('SALESFORCE_SECURITY_TOKEN')
# domain = "login"

username = "sagarkalthiya-hhtd@force.com"
password = "Sagar!@#$1234"
security_token = "LpUYJUJUhUDlWlP899jdigzZk"
domain = "login"

session_id, instance = SalesforceLogin(username=username, password=password, security_token=security_token, domain=domain)
sf = Salesforce(instance=instance, session_id=session_id)


# print(sf)
# rs = sf.query('SELECT Id, Name, Type FROM Account')
# print(rs)

# df = pd.DataFrame(rs['records'])
# print(df)

# df.to_csv('salesforce_data.csv', index=False)


for element in dir(sf):
    if not element.startswith('_'):
        if isinstance(getattr(sf, element), str):
            print('Property Name:{0} ;Value: {1}'.format(element, getattr(sf, element)))

metadata_org = sf.describe()
print(metadata_org['encoding'])
print(metadata_org['maxBatchSize'])
print(metadata_org['sobjects'])
df_sobjects = pd.DataFrame(metadata_org['sobjects'])
df_sobjects.to_csv('org_metadata_info.csv', index=False)


# # method 2
# account = SFType('account', session_id, instance)
# account_metadata = account.metadata()
# df_account_metadata = pd.DataFrame(account_metadata.get('objectDescribe'))
# df_account_metadata.to_csv('account metadata.csv', index=False)

# Amazon S3 settings
s3_bucket_name = 'aaa-salesforce'
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

