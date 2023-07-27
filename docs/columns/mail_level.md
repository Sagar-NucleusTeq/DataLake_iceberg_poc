{% docs mail_level %}
{% raw %}

# Mail Level

The following are descriptions of the Mail Level in the Operation Codes List:

• Cancellation: Process to cancel postage for collection mail. Typically, the first processing
operation received for loose collection mail.

• Outgoing (O/G) Primary: Processing of originating mail separated by Automated Area
Distribution Center (AADC), 3-digit ZIP Code separations, and 5-digit ZIP Code separations for
overnight, 2-day, and 3-day delivery. Additional processing is expected on automated equipment.

• Outgoing (O/G) Secondary: Processing of originating mail not finalized on outgoing primary
separated by AADC, 3-digit ZIP Code separations, and 5-digit ZIP Code separations for
overnight, 2-day, and 3-day delivery. Additional processing is expected on automated equipment.

• Managed Mail: Processing of 3- and 5-digit outgoing primary mail normally sorted from an AADC
level down to 3-digit ZIP Code level, with high-volume 5-digit zones and firms also held out.
Additional processing is expected on automated equipment for the 3-digit sorted volume and the
5-digit sorted volume for which the plant has incoming secondary, DPS, sector/segment, or box
section sorting responsibility.

• Incoming (I/C) SCF: Processing of local destinating mail normally separated by the host SCF by
5-digit ZIP Code. Additional processing on automated equipment is expected for the 5-digit ZIP
Codes for which the plant has incoming secondary, DPS, sector/segment, or box section sorting
responsibility.

• Incoming (I/C) Primary: Processing of local mail normally separated by the host SCF by 5-digit
ZIP Code for which it has delivery responsibility. Additional processing on automated equipment
is expected for mail for which the plant has incoming secondary, DPS, sector/segment, or box
section sorting responsibility.

• Incoming (I/C) Secondary: Processing of local mail normally separated by carrier route. This
mail might be finalized, or additional processing might be expected for letter mail on automated
equipment (e.g., carrier sequence barcode sorters). This is the final expected processing for flats
that are not processed on the Flats Sequencing System (FSS).

• Box Section: Processing of local mail normally separated by Post Office™ (PO) Box section. In
most instances, this is the final automated processing for this mail (manual sorting is required to
separate mail by individual PO Box). In some instances, mail is separated into individual PO
Boxes by repeating this operation on automated equipment. This is the reason why mailers may
receive multiple scans with the same operation code for a given piece.
IV Mail Tracking & Reporting User Guide V2.19.1 | Page 265

• Sector/Segment (SEC/SEG or S/S):
	– 1st Pass (Sec/Seg Sequencing): Processing to separate mail by ZIP+4® sectors. This mail
may require additional processing on automated equipment.
	– 2nd Pass (Sec/Seg Carrier Sort): Processing to separate mail by ZIP+4 segments. This is the
final processing of mail.

• Delivery Point Sequence (DPS):
	– 1st Pass (DPS Sequencing): Processing to separate mail into carrier walk sequence. In most
cases, this mail requires additional processing on automated equipment. This is the last
processing for some mailpieces (e.g., firm holdouts, box sections, and Postal Service
facilities).
	– 2nd Pass (DPS Carrier Sort): Processing to separate mail into carrier walk sequence. This is
the final processing of mail.

• Logical Out for Delivery Event: Implied event indicating when the mailpieces should be out for
delivery. See Appendix E.3.1: Logical Out for Delivery Events for information about how the
system creates logical out for delivery events.

• Logical Delivery Event: Implied event indicating when the mailpiece should have been
delivered. See Appendix E.3.2: Logical Delivery Events for information about how the system
creates logical delivery events.


Source: https://postalpro.usps.com/mnt/glusterfs/2021-06/IV_MTR_UserGuide_v2.19.3.pdf


### Security and Usage Information
|     |     |
| --- | --- |
| Security Classification: | Internal |
| Usage Requirement:       | Deidentified |

{% endraw %}
{% enddocs %}