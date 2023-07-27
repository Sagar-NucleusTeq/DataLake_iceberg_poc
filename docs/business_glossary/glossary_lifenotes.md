{% docs glossary_lifenotes %}
{% raw %}

<a name="lifenotes"></a>
# LifeNotes

### Area of the Business
All

### Definition
Some free-form text areas and some specific categories of data used in the underwriting
process where the underwriters can add notes and make
comments as they go. Member Services, Underwriting and New Business all can add notes
to LifeNotes.

This information can be found in the LifePlus tables in the MBODY field in ACTEMP.PRDDATA.LNDTA00,
along with some other information about the note entry.
 
### Calculation
```
SELECT *
FROM openquery(LIFEPLUS, 'SELECT 
	MENT#,
	MSENTD,
	MCAT,
	MSUBJ,
	MSID,
	LENGTH(MBODY) AS MSG_LEN,
	CAST(MBODY as char(4000)) AS MBODY 
FROM ACTEMP.PRDDATA.LNDTA00
WHERE MENT# in (''4000247953'',''4000334010'')
')
ORDER by MENT#
GO
```

### Rules


### Useful Takeaways


{% endraw %}
{% enddocs %}