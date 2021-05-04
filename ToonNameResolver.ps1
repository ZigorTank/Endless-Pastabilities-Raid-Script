# This fonction will resolve name by switching on Discord ID and checking Raid-Helper spec.
# There is no automation. IDs, Specs and resulting names are manually created here.
function Resolve-ToonName {
    param($obj)

    $name = $obj.username.replace("**", "")
    $id = $obj.userid
    $spec = $obj.spec

    # Ling/Ayyo/Brawnn
    if($id -eq '320453218867871744') {
        $name = switch($spec) {
            'RestoShaman' {'Lingweenie'; Break}
            'Enhancer' {'Lingweenie'; Break}
            'Elemental' {'Lingweenie'; Break}
            'Mage' {'Ayyohee'; Break}
            'Tank' {'Brawnn'; Break}
            'Warrior' {'Brawnn'; Break}
            'Priest' {'Wingleenie'; Break}
            'Shadow' {'Wingleenie'; Break}
            Default {$name}
        }
    }
    
    # Steiny/Mooranda
    if($id -eq '170730326258221057') {
        $name = switch($spec) {
            'RestoShaman' {'Steiny'; Break}
            'Enhancer' {'Steiny'; Break}
            'Elemental' {'Steiny'; Break}
            'RestoDruid' {'Mooranda'; Break}
            'Bear' {'Mooranda'; Break}
            'Feral' {'Mooranda'; Break}
            'Balance' {'Mooranda'; Break}
            Default {$name}
        }
    }
    
    # Aada/Azélie
    if($id -eq '330266256345268236') {
        $name = switch($spec) {
            'RestoShaman' {'Aada'; Break}
            'Enhancer' {'Aada'; Break}
            'Elemental' {'Aada'; Break}
            'Rogue' {'Azélie'; Break}
            Default {$name}
        }
    }
    
    # Xundori/Slushe
    if($id -eq '255074082817572865') {
        $name = switch($spec) {
            'Hunter' {'Xundori­'; Break}
            'Mage' {'Slushe'; Break}
            Default {$name}
        }
    }
    
    # Kromash/Sterngar/Kromsneaks
    if($id -eq '220368188649635841') {
        $name = switch($spec) {
            'Tank' {'Sterngar'; Break}
            'Warrior' {'Sterngar'; Break}
            'RestoShaman' {'Kromash'; Break}
            'Enhancer' {'Kromash'; Break}
            'Elemental' {'Kromash'; Break}
            'Rogue' {'Kromsneaks'; Break}
            Default {$name}
        }
    }
    
    # Lavirshield/Lavironi
    if($id -eq '250795442110070784') {
        $name = switch($spec) {
            'RestoDruid' {'Lavirshield'; Break}
            'Bear' {'Lavirshield'; Break}
            'Feral' {'Lavirshield'; Break}
            'Balance' {'Lavirshield'; Break}
            'Mage' {'Lavironi'; Break}
            Default {$name}
        }
    }
    
    # Cnote/Varandel
    if($id -eq '434184256982482944') {
        $name = switch($spec) {
            'Rogue' {'Cnote'; Break}
            'Tank' {'Varandel'; Break}
            'Warrior' {'Varandel'; Break}
            Default {$name}
        }
    }
    
    # Ahanu/Goregnar
    if($id -eq '778418187070210079') {
        $name = switch($spec) {
            'RestoDruid' {'Ahanu'; Break}
            'Bear' {'Ahanu'; Break}
            'Feral' {'Ahanu'; Break}
            'Balance' {'Ahanu'; Break}
            'Warrior' {'Goregnar'; Break}
            Default {$name}
        }
    }
    
    # Thuglove/Latavius
    if($id -eq '658326685451812864') {
        $name = switch($spec) {
            'Hunter' {'Thuglove'; Break}
            'RestoDruid' {'Latavius'; Break}
            'Bear' {'Latavius'; Break}
            'Feral' {'Latavius'; Break}
            'Balance' {'Latavius'; Break}
            Default {$name}
        }
    }
    
    # Kwanza/Devoutangel/Dustnbones
    if($id -eq '581655097071763477') {
        $name = switch($spec) {
            'Priest' {'Devoutangel'; Break}
            'Shadow' {'Devoutangel'; Break}
            'Warlock' {'Dustnbones'; Break}
            Default {$name}
        }
    }

    # GreenMyst/Dedayag
    if($id -eq '388822016821821441') {
        $name = switch($spec) {
            'Warrior' {'GreenMyst'; Break}
            'Mage' {'Dedayag'; Break}
            Default {$name}
        }
    }

    # Tenou/Lilyboom
    if($id -eq '382419917154287626') {
        $name = switch($spec) {
            'RestoDruid' {'Tenou'; Break}
            'Bear' {'Tenou'; Break}
            'Feral' {'Tenou'; Break}
            'Balance' {'Lilyboom'; Break}
            Default {$name}
        }
    }

    # Pamortii/Mamortii
    if($id -eq '713371518549098547') {
        $name = switch($spec) {
            'Priest' {'Primortii'; Break}
            'Mage' {'Mamortii'; Break}
            Default {$name}
        }
    }

    # Moonmother/Bigkitty
    if($id -eq '631258731891392512') {
        $name = switch($spec) {
            'Priest' {'Moonmother'; Break}
            'Hunter' {'Bigkitty'; Break}
            Default {$name}
        }
    }

    # Okrogre/iaremage
    if($id -eq '532182136170610689') {
        $name = switch($spec) {
            'Rogue' {'Okrogre'; Break}
            'Mage' {'Iaremage'; Break}
            Default {$name}
        }
    }

    # Dunbledore/Dunfuktup/Wizstick/Geesus/Dunski
    if($id -eq '332729827478208512') {
        $name = switch($spec) {
            'Warlock' {'Dunbledore'; Break}
            'Rogue' {'Dunfuktup'; Break}
            'Mage' {'Wizstick'; Break}
            'Priest' {'Geesus'; Break}
            'Warrior' {'Dunski'; Break}
            'Tank' {'Dunski'; Break}
            Default {$name}
        }
    }

    # Donninan/Masiliyo
    if($id -eq '627471150754168853') {
        $name = switch($spec) {
            'RestoDruid' {'Masiliyo'; Break}
            'Bear' {'Masiliyo'; Break}
            'Feral' {'Masiliyo'; Break}
            'Balance' {'Masiliyo'; Break}
            'Priest' {'Donninan'; Break}
            'Shadow' {'Donninan'; Break}
            Default {$name}
        }
    }

    # Enchanterzim/Keeperofjuke
    if($id -eq '609979693260603402') {
        $name = switch($spec) {
            'Warlock' {'Enchanterzim'; Break}
            'Rogue' {'Keeperofjuke'; Break}
            'Hunter' {'Merryjane'; Break}
            'Mage' {'Dankandspank'; Break}
            Default {$name}
        }
    }

    # Heelflip/Kickturn
    if($id -eq '331601303153278976') {
        $name = switch($spec) {
            'Warlock' {'Heelflip'; Break}
            'Rogue' {'Kickturn'; Break}
            'RestoShaman' {'Utterette'; Break}
            'Enhancer' {'Utterette'; Break}
            'Elemental' {'Utterette'; Break}
            Default {$name}
        }
    }

    # Dakanu/Emcaga
    if($id -eq '694953116302573569') {
        $name = switch($spec) {
            'Warlock' {'Emcaga'; Break}
            'Priest' {'Dakanu'; Break}
            Default {$name}
        }
    }

    # Spacebus/Scoby
    if($id -eq '693579254922739782') {
        $name = switch($spec) {
            'Warrior' {'Scoby'; Break}
            'Tank' {'Scoby'; Break}
            'Mage' {'Spacebus'; Break}
            Default {$name}
        }
    }

    # Tarp/Mahboofs/Bovinebooty
    if($id -eq '722481056221102171') {
        $name = switch($spec) {
            'RestoShaman' {'Tarp'; Break}
            'Enhancer' {'Tarp'; Break}
            'Elemental' {'Tarp'; Break}
            'Hunter' {'Mahboofs'; Break}
            'RestoDruid' {'Bovinebooty'; Break}
            'Bear' {'Bovinebooty'; Break}
            'Feral' {'Bovinebooty'; Break}
            'Balance' {'Bovinebooty'; Break}
            Default {$name}
        }
    }

    # Slizzle<Lefthook>
    if($id -eq '688541032996274180') {
        $name = switch($spec) {
            'Warlock' {'Slizzle'; Break}
            Default {$name}
        }
    }

    # Kappo/Holykap
    if($id -eq '378778502687621122') {
        $name = switch($spec) {
            'Hunter' {'Kappo'; Break}
            'Priest' {'Holykap'; Break}
            Default {$name}
        }
    }

    # Doomz/Qilat
    if($id -eq '832950641902878750') {
        $name = switch($spec) {
            'Mage' {'Doomz'; Break}
            Default {$name}
        }
    }

    # Alita/Bartuc
    if($id -eq '744236970359652444') {
        $name = switch($spec) {
            'Warlock' {'Alita'; Break}
            'Rogue' {'Bartuc'; Break}
            Default {$name}
        }
    }

    # Gandle/Gorakk
    if($id -eq '621461595620376576') {
        $name = switch($spec) {
            'Mage' {'Gandle'; Break}
            'Tank' {'Goraak'; Break}
            'Warrior' {'Goraak'; Break}
            Default {$name}
        }
    }

    # Rags/Smashndash
    if($id -eq '514696649038233620') {
        $name = switch($spec) {
            'RestoShaman' {'Smashndash'; Break}
            'Enhancer' {'Smashndash'; Break}
            'Elemental' {'Smashndash'; Break}
            Default {$name}
        }
    }

    # Mango
    if($id -eq '288906829738803201') {
        $name = switch($spec) {
            'Rogue' {'Mangosalsa'; Break}
            'Warlock' {'Mangosteen'; Break}
            Default {$name}
        }
    }

    return $name
}