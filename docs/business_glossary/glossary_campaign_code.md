{% docs glossary_campaign_code_keycode %}
{% raw %}

<a name:"campaign_code_keycode"></a>
# Campaign Code / Keycode

### Area(s) of the Business
All

### Definition
##### Digital
A 10-digit alphanumeric code which is a unique identifier used to 
track a marketing campaign or the marketing effort used to increase awareness and interest 
in AAA Life products.

| Position | Meaning                  |  Example Characters  |        Description                |
|----------|--------------------------| -------------------- | --------------------------------- |
| 1-2      | 2-digit year code        | 11, 12, 13, etc.     | The last two digits of the year   |
| 3        | Month Code               | J, U, G              | A single character that represents the month that the campaign was scheduled to [drop](#!/exposure/docs.business_glossary.glossary#drop_date). See below for actual codes. |
| 4        | Product Code             | E, T, W              | A single character that represents the product type that is being marketed with said campaign. See below for actual codes. |
| 5-7      | Club Code                | 999, 212, 005, etc.  | [Club Code](#!/exposure/docs.business_glossary.glossary#club_code) |
| 8-9      | Sequence Code            | 01, 02, 03, etc.     | A 2-digit numeric code that separates the campaigns that have all of the other same attributes, i.e. the same year, month, product, club, etc. |
| 10       | Media Type Code/Channel  | E, S, etc.           | A single character code that represents the type of campaign in question. See below for actual codes. |

| Month     | Month Code |
|-----------|------------|
| January   | J          |
| February  | F          |
| March     | M          |
| April     | A          |
| May       | Y          |
| June      | U          |
| July      | L          |
| August    | G          |
| September | S          |
| October   | O          |
| November  | N          |
| December  | N          |

| Media Type              | Media Type Code |
|-------------------------|-----------------|
| Text Link               |      T          |
| Email                   |      E          |
| Web Banner              |      B          |
| Paid Search             |      S          |
| Partial Follow-up Email |      P          |
| Mailing Insert          |      I          |
| Direct Mail URL         |      M          |
| Internet Display Ad     |      D          |
| Social Media            |      L          |
| Ad                      |      A          |
| Lead Referral           |      R          |
| Aggregator Site         |      G          |
| Phone                   |      H          |
| Print                   |      N          |
| Outbound Call           |      C          |
| Landing Page            |      Z          |

| Product        | Product Code |
|----------------|--------------|
| Annuities      | A            |
| Agent Sold     | N            |
| Express Term   | E            |
| GIWL           | W            |
| MLTA           | L            |
| SIWL           | S            |
| Term           | T            |
| Whole Life     | H            |
| Universal Life | U            |
| Unspecified    | X            |


##### Direct Mail
2021 Acquisition Keycode Assumptions
 - All clubs get their own keycode by club_code/state
 - Packages with different package IDs get their own keycodes
 - Test packages get their own keycodes based on above breakdowns
 - **Cross-Sell**: Keycodes further broken out by offer & member/vs non-member.  See additional details in 10th position notes.

Examples: 

**Acquisition**
Example: 2021, C8, Term, ACE CA, DMAT20, Control

| Campaign | 2021 |     |  C8  | Term | ACE | CA  | DMAT20 | Control |
| -------- | ---- | --- | ---- | ---- | --- | --- | ------ | ------- |
| Keycode  |  2   |  1  |  8   |  D   | 004 |  4  |   2    |    A    |
| Position |  1   |  2  |  3   |  4   | 567 |  8  |   9    |    10   |

**Cross-Sell**
Example: 2021, C8, Term, Cross Sell, Upsell, ACE CA, DMAT20

| Campaign | 2021 |     |  C8  | Term | Cross-Sell | Upsell | ACE | CA  | DMAT20 |     |
| -------- | ---- | --- | ---- | ---- | ---------- | ------ | --- | --- | ------ | --- |
| Keycode  |  2   |  1  |  8   |  D   |     X      |   U    |  4  |  4  |   2    |  A  |
| Position |  1   |  2  |  3   |  4   |     5      |   6    |  7  |  8  |   9    | 10  |

**Trigger**
Example: 2021, Campaign 4, GIWL Triggered, Term Declined, Ace, GIWL app, Club-State, Member/Non-Member

| Campaign | 2021 |     |  C4  | GIWL | Term Declined | ACE | ALSC | GIWL App | Club-State | Member |
| -------- | ---- | --- | ---- | ---- | ------------- | --- | ---- | -------- | ---------- | --- |
| Keycode  |  2   |  1  |  4   |  W   |       C       |  D  |  4   |    W     |     F      |  A  |
| Position |  1   |  2  |  3   |  4   |       5       |  6  |  7   |    8     |     9      | 10  |

###### Positions 1-2
**Acquisition**, **Cross-Sell**, and **Trigger**

- Last two digits of the year that the campaign drops

###### Position 3
**Acquisition**, **Cross-Sell**, and **Trigger**

 - Campaign 
 
| Example values    | Translated Campaign Number |
| ----------------- | -------------------------- |
| 1 | 1  |
| 2 | 2  |
| 7 | 7  |
| 9 | 9  |
| 0 | 10 |
| C | 13 |

###### Position 4
**Acquisition** and **Cross-Sell**
- Product
   - D: Member Term
   - L: MLTA
   - V: Accident
   - W: GIWL
   - Z: Non-Member Term

**Trigger**
- Product
   - D: Member Term
   - W: GIWL
   - L: Accident
   - Z: Non-Member Term


###### Position 5
**Acquisition**
First digit of current [club code](#!/exposure/docs.business_glossary.glossary#club_code)

**Cross-Sell**
- Type
   - X: Cross Sell

**Trigger**
- C:both waves

###### Position 6
**Acquisition**
Second digit of current [club code](#!/exposure/docs.business_glossary.glossary#club_code)

**Cross-Sell**
- Type of Cross Sell
   - 2: 2nd Policy Offers (used for GIWL 2nd Policy Offers)
   - D: Term Denieds
   - L: Lapses
   - T: Traditional
   - U: Upsells (used for Term Upsells in D TermUCS)

**Trigger**
- Type of Cross Sell
   - T: Traditional
   - L: Lapses
   - 2: 2nd Policy Offers (used for GIWL 2nd Policy Offers)
   - D: Term Denieds
   - U: Upsells (used for Term Upsells in D TermUCS)
   
 ###### Position 7
**Acquisition**
Third and last digit of current [club code](#!/exposure/docs.business_glossary.glossary#club_code)

**Cross-Sell**
- Company, used for commission purposes 
   - 2: AAA Mid-Atlantic or ACA
   - 4: ALSC or ACE
   - 5: ALCS or MWG
   - 7: ALMI or ACG
   - 9: ALAN or Independent Clubs

**Trigger**
- Company, used for commission purposes 
   - 9: ALAN
   - 2: AAA Mid-Atlantic or Club 212
   - 4: ALSC
   - 5: ALCS
   - 7: ALMI


###### Position 8
**Acquisition**
- Application
   - 4: Term DMAT20
   - X: NY Term DMAT20
   - L: MLTA
   - V: Accident
   - W: GIWL

**Cross-Sell**
- Application
   - 4: Term DMAT20
   - X: NY Term DMAT20
   - L: MLTA
   - V: Accident
   - W: GIWL

**Trigger**
- Application
   - 3: Term 3 question app
   - 8: Term 8 question app
   - N: Term NY
   - W: GIWL
   - L: Accident

###### Position 9
**Acquisition**, **Cross-Sell**, and **Trigger**
- Determined by current club code and state 

| Example Values | Club-State |
| -------------- | ---------- |
|       1        |  001 - AL  |
|       3        |  005 - CA  |
|       8        |  074 - NJ  |
|       9        |  115 - OH  |
|       A        |  080 - NY  |
|       E        |  241 - SD  |
|       F        |  117 - OH  |
|       H        |  215 - WV  |
|       P        |  238 - PA  |
|       Q        |  240 - RI  |

###### Position 10
**Acquisition**
- Differentiate Controls from Tests
   - All keycodes ending in 'A' are Control packages
   - Keycodes ending in other characters are Tests or subsequent Control packages in Control Ranking

**Cross-Sell**
- Used to differentiate keycodes with other equal characters
    - D TermUCS - Keycodes ending in A are for 100K offers and keycodes ending in B are for 200K offers
	- GIWL2CS - Keycodes ending in A-D are for Member Offers 5K-20K and keycodes ending in E-H are for Non-member Offers 5K-20K.	
	- GIWLTDCS, GIWLCS, and GIWLLCS - Keycodes ending in A are for Members and keycodes ending in B are for Non-Members

**Trigger**
- Differentiate Controls from Tests
   - All keycodes ending in A are Control packages
   - Keycodes ending in other characters are Tests
   - Keycodes belonging to the same test will end in the same character
   - GIWLTDCS Keycodes ending in A are for Members and keycodes ending in B are for Non-Members

{% endraw %}
{% enddocs %}
