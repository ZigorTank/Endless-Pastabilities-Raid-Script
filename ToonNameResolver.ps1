# This fonction will resolve name by switching on Discord ID and checking Raid-Helper spec.
# There is no automation. IDs, Specs and resulting names are manually created here.
function Resolve-ToonName {
    param($obj)

    $name = $obj.Name

    # Ling/Ayyo/Brawnn
    if($obj.ID -eq '320453218867871744') {
        $name = switch($obj.Spec) {
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
    if($obj.ID -eq '170730326258221057') {
        $name = switch($obj.Spec) {
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
    if($obj.ID -eq '330266256345268236') {
        $name = switch($obj.Spec) {
            'RestoShaman' {'Aada'; Break}
            'Enhancer' {'Aada'; Break}
            'Elemental' {'Aada'; Break}
            'Rogue' {'Azélie'; Break}
            Default {$name}
        }
    }
    
    # Xundori/Slushe
    if($obj.ID -eq '255074082817572865') {
        $name = switch($obj.Spec) {
            'Hunter' {'Xundori­'; Break}
            'Mage' {'Slushe'; Break}
            Default {$name}
        }
    }
    
    # Kromash/Sterngar/Kromsneaks
    if($obj.ID -eq '220368188649635841') {
        $name = switch($obj.Spec) {
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
    if($obj.ID -eq '250795442110070784') {
        $name = switch($obj.Spec) {
            'RestoDruid' {'Lavirshield'; Break}
            'Bear' {'Lavirshield'; Break}
            'Feral' {'Lavirshield'; Break}
            'Balance' {'Lavirshield'; Break}
            'Mage' {'Lavironi'; Break}
            Default {$name}
        }
    }
    
    # Cnote/Varandel
    if($obj.ID -eq '434184256982482944') {
        $name = switch($obj.Spec) {
            'Rogue' {'Cnote'; Break}
            'Tank' {'Varandel'; Break}
            'Warrior' {'Varandel'; Break}
            Default {$name}
        }
    }
    
    # Ahanu/Goregnar
    if($obj.ID -eq '778418187070210079') {
        $name = switch($obj.Spec) {
            'RestoDruid' {'Ahanu'; Break}
            'Bear' {'Ahanu'; Break}
            'Feral' {'Ahanu'; Break}
            'Balance' {'Ahanu'; Break}
            'Warrior' {'Goregnar'; Break}
            Default {$name}
        }
    }
    
    # Thuglove/Latavius
    if($obj.ID -eq '658326685451812864') {
        $name = switch($obj.Spec) {
            'Hunter' {'Thuglove'; Break}
            'RestoDruid' {'Latavius'; Break}
            'Bear' {'Latavius'; Break}
            'Feral' {'Latavius'; Break}
            'Balance' {'Latavius'; Break}
            Default {$name}
        }
    }
    
    # Kwanza/Devoutangel/Dustnbones
    if($obj.ID -eq '581655097071763477') {
        $name = switch($obj.Spec) {
            'Priest' {'Devoutangel'; Break}
            'Shadow' {'Devoutangel'; Break}
            'Warlock' {'Dustnbones'; Break}
            Default {$name}
        }
    }

    # GreenMyst/Dedayag
    if($obj.ID -eq '388822016821821441') {
        $name = switch($obj.Spec) {
            'Warrior' {'GreenMyst'; Break}
            'Mage' {'Dedayag'; Break}
            Default {$name}
        }
    }

    # Tenou/Lilyboom
    if($obj.ID -eq '382419917154287626') {
        $name = switch($obj.Spec) {
            'RestoDruid' {'Tenou'; Break}
            'Bear' {'Tenou'; Break}
            'Feral' {'Tenou'; Break}
            'Balance' {'Lilyboom'; Break}
            Default {$name}
        }
    }

    # Pamortii/Mamortii
    if($obj.ID -eq '713371518549098547') {
        $name = switch($obj.Spec) {
            'Priest' {'Primortii'; Break}
            'Mage' {'Mamortii'; Break}
            Default {$name}
        }
    }

    # Moonmother/Bigkitty
    if($obj.ID -eq '631258731891392512') {
        $name = switch($obj.Spec) {
            'Priest' {'Moonmother'; Break}
            'Hunter' {'Bigkitty'; Break}
            Default {$name}
        }
    }

    # Okrogre/iaremage
    if($obj.ID -eq '532182136170610689') {
        $name = switch($obj.Spec) {
            'Rogue' {'Okrogre'; Break}
            'Mage' {'Iaremage'; Break}
            Default {$name}
        }
    }

    # Dunbledore/Dunfuktup/Wizstick/Geesus/Dunski
    if($obj.ID -eq '332729827478208512') {
        $name = switch($obj.Spec) {
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
    if($obj.ID -eq '627471150754168853') {
        $name = switch($obj.Spec) {
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
    if($obj.ID -eq '609979693260603402') {
        $name = switch($obj.Spec) {
            'Warlock' {'Enchanterzim'; Break}
            'Rogue' {'Keeperofjuke'; Break}
            'Hunter' {'Merryjane'; Break}
            'Mage' {'Dankandspank'; Break}
            Default {$name}
        }
    }

    # Heelflip/Kickturn
    if($obj.ID -eq '331601303153278976') {
        $name = switch($obj.Spec) {
            'Warlock' {'Heelflip'; Break}
            'Rogue' {'Kickturn'; Break}
            'RestoShaman' {'Utterette'; Break}
            'Enhancer' {'Utterette'; Break}
            'Elemental' {'Utterette'; Break}
            Default {$name}
        }
    }

    # Dakanu/Emcaga
    if($obj.ID -eq '694953116302573569') {
        $name = switch($obj.Spec) {
            'Warlock' {'Emcaga'; Break}
            'Priest' {'Dakanu'; Break}
            Default {$name}
        }
    }

    # Spacebus/Scoby
    if($obj.ID -eq '693579254922739782') {
        $name = switch($obj.Spec) {
            'Warrior' {'Scoby'; Break}
            'Tank' {'Scoby'; Break}
            'Mage' {'Spacebus'; Break}
            Default {$name}
        }
    }

    # Tarp/Mahboofs/Bovinebooty
    if($obj.ID -eq '722481056221102171') {
        $name = switch($obj.Spec) {
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

    return $name
}