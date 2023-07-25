{% docs units_of_insurance %}
{% raw %}

<a name="units_of_insurance"></a>
# Units of Insurance
The number of units of insurance for the benefit. The number of units is multiplied by the 
value per unit to determine the face amount.

**LIFEPLUS UNITS:** Exist for all L+ policies 

**FAST UNITS:** We only have units of insurance for MLTA policies currently

**EXTRA INFO ABOUT MLTA UNITS:**
- MLTA units is a special case. For regular life insurance every unit is usually 1000 dollars of 
face amount. Face amount can change over time, but you need a constant to drive it in the system. 
 
- MLTA was retro fitted because system expected a units of insurance. For MLTA, Units*Value per unit
= face amount still applies.

|             |                         |                           |                          |                         |                            |                           |
|-------------|-------------------------|---------------------------|--------------------------|-------------------------|----------------------------|---------------------------| 
| Member Year | Value Death Benefit (V) | Economy Death Benefit (E) | Deluxe Death Benefit (D) | Ultra Death Benefit (U) | Superior Death Benefit (S) | Supreme Death Benefit (P) |
| 1           | 12,500                  | 25,000                    | 50,000                   | 75,000                  | 100,000                    | 125,000                   |
| 2           | 15,625                  | 31,250                    | 62,500                   | 93,750                  | 125,000                    | 156,250                   |
| 3           | 18,750                  | 37,500                    | 75,000                   | 112,500                 | 150,000                    | 187,500                   |
| 4           | 21,875                  | 43,750                    | 87,500                   | 131,250                 | 175,000                    | 218,750                   |
| 5+          | 25,000                  | 50,000                    | 100,000                  | 150,000                 | 200,000                    | 250,000                   |

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}