import json
import pandas as pd
from simple_salesforce import Salesforce, SalesforceLogin, SFType
import boto3
import os
   
sf = Salesforce(username='prakriti.gupta@nucleusteq.com',
                password='Prakriti@29',
                security_token='fQCNwJ9e9yrdzaZ4AAVP6Eht',
                domain='login')
print(sf)
rs = sf.query('SELECT Id, Name, Type FROM Account')
print(rs)

df = pd.DataFrame(rs['records'])
print(df)
df.to_csv('salesforce_data.csv', index=False)


aws_access_key_id = os.environ.get('AWS_ACCESS_KEY_ID')
aws_secret_access_key = os.environ.get('AWS_SECRET_ACCESS_KEY')
bucket_name = 'aaa-salesforce'
file_path = 'salesforce_data.csv'

# Create an S3 client
s3 = boto3.client('s3', aws_access_key_id=aws_access_key_id, aws_secret_access_key=aws_secret_access_key)

# Upload the file
s3.upload_file(file_path, bucket_name, file_path)

print(f'{file_path} uploaded to {bucket_name} on S3.')
