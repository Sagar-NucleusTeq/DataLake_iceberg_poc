import json
import pandas as pd
from simple_salesforce import Salesforce, SalesforceLogin, SFType
   
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

