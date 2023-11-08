import pandas as pd
from simple_salesforce import Salesforce, SalesforceLogin, SFType

# loginInfo = json.load(open('login.json'))  
username = "sagarkalthiya-hhtd@force.com"
password = "Sagar!@#$1234"
security_token = "LpUYJUJUhUDlWlP899jdigzZk"
domain = "login"

session_id, instance = SalesforceLogin(username=username, password=password, security_token=security_token, domain=domain)
sf = Salesforce(instance=instance, session_id=session_id)

for element in dir(sf):
    if not element.startswith('_'):
        if isinstance(getattr(sf, element), str):
            print('Property Name:{0} ;Value: {1}'.format(element, getattr(sf, element)))

metadata_org = sf.describe()
print(metadata_org['encoding'])
print(metadata_org['maxBatchSize'])
print(metadata_org['sobjects'])
df_sobjects = pd.DataFrame(metadata_org['sobjects'])
df_sobjects.to_csv('org metadata info.csv', index=False)


# method 2
account = SFType('account', session_id, instance)
account_metadata = account.metadata()
df_account_metadata = pd.DataFrame(account_metadata.get('objectDescribe'))
df_account_metadata.to_csv('account metadata.csv', index=False)

