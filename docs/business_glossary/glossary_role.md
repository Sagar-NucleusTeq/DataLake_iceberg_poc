{% docs glossary_role %}
{% raw %}

<a name="role"></a>
# Role

### Area of the Business
All

### Definition
**LifePlus:**
Identifies the type of role to which this record corresponds. For example, this field can
tell us if the client is the Insured (INS, JNT), Owner (OW1, OW2), Payor (PAY, PY2, PAE) 
or Beneficiary (BEN, BNC). This is a user defined field, so it represents the role that 
the user defined.

| Role Code Examples | Role Description       |
| --------- | ---------------------  |
|    INS    | Insured                |
|    JNT    | Joint Insured          |
|    OW1    | Owner One              |
|    OW2    | Owner Two              |
|    PAY    | Payor                  |
|    PY2    | Secondary Payee        |
|    PAE    | Payor                  |
|    BEN    | Beneficiary            |
|    BNC    | Contingent Beneficiary |

**FAST:**
The field that identifies the type of role to which this record corresponds. For example, 
OLI_REL_INSURED, OLI_REL_OWNER, OLI_REL_BENEFICIARY, and OLI_REL_PAYOR.

| Role Code Examples    | Role Description       |
| --------------------- | ---------------------  |
| OLI_REL_INSURED       | Insured                |
| OLI_REL_OWNER         | Owner One              |
| OLI_REL_JOINTOWNER    | Owner Two              |
| OLI_REL_PAYOR         | Payor                  |
| OLI_REL_BENEFICIARY   | Beneficiary            |
| OLI_REL_CONTGNTBENE   | Contingent Beneficiary |

### Calculation
N/A

### Rules
N/A

### Useful Takeaways
N/A


{% endraw %}
{% enddocs %}