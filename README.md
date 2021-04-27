# Endless-Pastabilities-Raid-Script
## Powershell scripts to manage Raid invites

How to use :
1. On Discord, extract the list of participants for the target event.

Type `!print <EventID>` in #bot-log

2. Download the resulting CSV.

3. Move the downloaded CSV to the `Endless-Pastabilities-Raid-Script` folder.

4. In a Powershell terminal, invoke the `ResolveNames.ps1` script and pass the CSV file as a parameter.

`.\ResolveNames.ps1 -csv .\707655085483753555-834081080096063509.csv`

5. Open the output text file `CleanList.txt` and copy its content.

6. Open the `MC Pasta Roster` Google sheet and paste the clean list in cell M1.

7. Manually build the roster by copy/paste names into groups.

8. When done, select the roster (cells B2 to I6)

9. In game, open the Raid-Helper add-on window and paste your list in the "Enter names here:" field.

7. Accept the change.
==> This will populate the Invite list area

## Managing Toon Names
The ToonNameResolver.ps1 contains a function used by `ResolveNames.ps1` to resolve toon names.
It's based on user's Discord ID.
The Discord IDs can be seen in the `RawList.txt` that is produced when you run the `ResolveNames.ps1` script.
By using this ID, I can assign a name based on the "spec" listed on the signup output.

``` powershell
# Ling/Ayyo/Brawnn
if($obj.ID -eq '320453218867871744') {
    $name = switch($obj.Spec) {
        'RestoShaman' {'Lingweenie'; Break}
        'Enhancer' {'Lingweenie'; Break}
        'Elemental' {'Lingweenie'; Break}
        'Mage' {'Ayyohee'; Break}
        'Tank' {'Brawnn'; Break}
        'Warrior' {'Brawnn'; Break}
        Default {$name}
    }
}

```
This way, the right name will be used to populate the roster list.
Of course, this switch is manually built which is tedious, but since it does not change,
it looks like a good investment.

## Building tank targets macros for Molten Core
You need to modify the `MCTankList.txt` by typing the 9 names needed for different bosses.
The role list is :
- MainTank1
- MainTank2
- MainTank3
- Offtank1
- Offtank2
- Rogue1
- Rogue2
- Rogue3
- Rogue4

The Rogue role can be replaced by any toons with interrupt habilities.

Then, just run : `.\MCTankTarget.ps1 -tankFile .\MCTankList.txt`
This will produce a file named `MC-Targets.txt` containing a list of macros that you need to copy/paste in your in-game macros

```
/rw {star} Tank assignments Luciferon {star}
/ra Zigor => {star}
/ra Donninan => {skull}
/ra Hogar => {x}

/rw {star} Tank assignments Gehennas {star}
/ra Zigor => {star}
/ra Donninan => {skull}
/ra Hogar => {x}

/rw {star} Tank assignments Garr {star}
/ra Zigor => Garr
/ra Donninan => {skull}
/ra Hogar => {x}
/ra Granator => {triangle}
/ra GreenMyst => {circle}

/rw {star} Tank assignments Sulfuron {star}
/ra Zigor => {star}
/ra Donninan + Kromsneaks => {skull}
/ra Hogar + Dollfuss => {x}
/ra Granator + ScutFarkus => {triangle}
/ra GreenMyst + OkRogre => {circle}

/rw {star} Tank assignments Golemagg {star}
/ra Zigor => {skull}
/ra Donninan => {triangle}
/ra Hogar => {circle}

/rw {star} Tank assignments Majordomo {star}
/ra Zigor => Majordomo
/ra Donninan => {skull}
/ra Hogar => {x}
/ra Granator => {triangle}
/ra GreenMyst => {circle}
```
