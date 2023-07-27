{% docs operation_code %}
{% raw %}

# Operation Code

Each handling event has a three-digit Scan Event Code, or operation code (opcode), 
that describes the type of processing operation that generated the event. Each mail 
object will likely receive multiple handling event records, each of which will contain 
a different opcode. The number and type of processing operations that take place 
depend on numerous factors, including mail class, shape, presort level, and originating 
and destinating locations.

Mailers can use opcodes to determine the processing status of mail objects. Understanding 
these opcodes is critical to the interpretation of handling event data. Each opcode 
represents a type of sort operation & the type of equipment on which the mail was processed. 
Multiple opcodes can describe a particular type of sort operation because each opcode 
represents a different piece of equipment or mail type.

### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}