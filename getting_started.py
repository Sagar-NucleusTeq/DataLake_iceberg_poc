import json
import pandas as pd
from simple_salesforce import Salesforce, SalesforceLogin, SFType
import boto3
import os
from pyiceberg.catalog import load_catalog
import awswrangler as wr

# Retrieve Salesforce credentials from GitHub repository secrets
username = os.environ.get("SALESFORCE_USERNAME")
password = os.environ.get("SALESFORCE_PASSWORD")
security_token = os.environ.get("SALESFORCE_SECURITY_TOKEN")
domain = "login"


session_id, instance = SalesforceLogin(
    username=username, password=password, security_token=security_token, domain=domain
)
sf = Salesforce(instance=instance, session_id=session_id)


print(sf)
rs = sf.query("SELECT Id, Name, Type FROM Account")
print(rs)

df = pd.DataFrame(rs["records"])
print(df)

df.to_csv("salesforce_data.csv", index=False)

database_name = "lakehouse_pilot_db"
bucket_name = "aaa-salesforce"
iceberg_table_name = "salesforce_demo"

aws_access_key_id = os.environ.get("AWS_ACCESS_KEY_ID")
aws_secret_access_key = os.environ.get("AWS_SECRET_ACCESS_KEY")


file_path = "salesforce_data.csv"

# Create an S3 client
s3 = boto3.client(
    "s3",
    aws_access_key_id=aws_access_key_id,
    aws_secret_access_key=aws_secret_access_key,
)

# Upload the file
s3.upload_file(file_path, bucket_name, file_path)

print(f"{file_path} uploaded to {bucket_name} on S3.")


s3_url_file = f"s3://{bucket_name}/{file_path}"


df = wr.s3.read_csv(s3_url_file)
print(df.head())
print(df.shape)
print(df.info())
print("----------columns----------")
list_of_cols = list(df.columns)
print(list_of_cols)


print(f"Reading data from:  ")
print(f" converted into Pandas DataFrame.")

# Convert all columns to strings
df = df.astype(str)
print(f" columns coverted into string.")


# Cleanup table before create
wr.catalog.delete_table_if_exists(database=database_name, table=iceberg_table_name)

table_location = f"s3://{bucket_name}/1-landing/{iceberg_table_name}"
temp_table_path = f"s3://{bucket_name}/zzz-temp-dir/{iceberg_table_name}"

print(f"destination_bucket_name : {bucket_name}")
print(f"database_name : {database_name}")
print(f"iceberg_table_name : {iceberg_table_name}")
print(f"table_location : {table_location}")
print(f"temp_table_path : {temp_table_path}")

# wr.athena.to_iceberg(
#     df=df,
#     database=database_name,
#     table=iceberg_table_name,
#     table_location=table_location,
#     temp_path=temp_table_path,
# )
# print(f"Iceberg table : {iceberg_table_name} : created successfully.")
