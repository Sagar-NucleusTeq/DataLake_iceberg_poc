{% docs staging_fast_parties %}
{% raw %}

# FAST Parties

![last updated](assets/update_badges/staging_fast_parties.svg)

FAST party (client) identification and personal details such as name, birth date, sex, and address.

Data Notes:
1. Date of birth contains invalid data that has been transformed. Any birth dates that are 
    '1900-01-01' have been transformed into NULL values.
2. We're purposefully leaving out a test requiring birthdate to be in the past, as there is currently a
    birthdate in 2055 in this table, and it is possible more birth dates like this could occur
    in the future.
    A DOB that is in the future when the party is a beneficiary is not something FAST
    production support can edit; it's a complicated reason, but long story short, knowing the
    date of birth of a beneficiary is not commonly collected or required.
    It was decided 10/15/21 in slack that we'd leave this test out in staging, as we cannot 
    decipher which parties are beneficiaries vs insured in this table. Once we can do that 
    (likely in mid) we will test the date of birth there.  
    NOTE: (search "The DOB in the future of the bene is not something prod support can edit" 
    for more details - the explanation is in #pas_data_consolidation)
3. There are negative values in zip_code currently, as well as values that are less than 5 characters.
    We're not currently sure (10/19/21) if these are valid values or not, it will take speaking
    with FAST.
4. To add a test to check that all values in the state_code column are valid we will need some
    work done that is not currently in scope.  
    It was decided on slack on 10/19/21 in #pas_data_consolidation "We're not equipped to
    validate current addresses for folks who could potentially be living anywhere in the world"
5. All phone numbers may need reformatting (via a macro) once the following happens 
    (decided on slack on 10/19/21 in #pas_data_consolidation):  
    I think we may want to let it be for now and take a look at it once we attach this to policy roles.
    We are going to get some junk in for beneficiaries, but we may find that we have some use cases
    for tests on insured/owner/payor.  
    At a minimum we should figure out how to standardize phone numbers and what is expected in the
    data so when we see garbage we either know it's garbage or can add additional context.
    And it should be something we agree on with the business.

### Security and Usage Information
|     |     |
| --- | --- |
| Grain:                   | 1 row per party_number |
| Security Classification: | Confidential |
| Usage Requirement:       | PII |

### Grain Description
See [party number](#!/model/model.aaa_life_data_platform.staging_lifeplus_client_master#party_number)
for more information

### Contact
Please contact the subject matter expert with any questions or concerns.

{% endraw %}
{% enddocs %}