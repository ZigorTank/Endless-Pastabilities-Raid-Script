# Endless-Pastabilities-Raid-Script
## Powershell scripts to manage Raid invites

How to use :
1. On Discord, extract the list of participants for the target event.

`!print <EventID>`

2. Download the resulting CSV.

3. Move the downloaded CSV to the Endless-Pastabilities-Raid-Script folder.

4. In a Powershell terminal, invoke the "Raid-Helper.ps1" script and pass the CSV file as a parameter.

`.\Raid-Helper.ps1 -csv .\707655085483753555-834081080096063509.csv`

5. Open the output text file "MC-Roster.txt" and copy its content.

6. In game, open the Raid-Helper add-on window and paste your list in the "Enter names here:" field.

7. Accept the change.
==> This will populate the Invite list area

