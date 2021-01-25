////Loadout.sqf///



		private ["_Guy"];
			
			_Guy = _this select 0;
				
			_GuyClass =	typeof _Guy; 
			
			switch _GuyClass do {
				case "B_Soldier_F":{   

		///B Rifleman///		
				
comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_MX_Black_F";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";
_Guy addWeapon "hgun_P07_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_BG_Guerrilla_6_1";
_Guy addVest "V_TacVest_oli";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellBlue";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 3 do {_Guy addItemToVest "30Rnd_65x39_caseless_black_mag";};
for "_i" from 1 to 2 do {_Guy addItemToVest "30Rnd_65x39_caseless_black_mag_Tracer";};
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
_Guy addHeadgear "H_HelmetB";
_Guy addGoggles "G_Bandanna_blk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



				};	


				
    
				case "B_soldier_AR_F": { 


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_MX_SW_Black_F";
_Guy addPrimaryWeaponItem "100Rnd_65x39_caseless_black_mag";
_Guy addPrimaryWeaponItem "bipod_01_F_blk";
_Guy addWeapon "hgun_P07_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_BG_Guerrilla_6_1";
_Guy addVest "V_BandollierB_oli";
_Guy addBackpack "B_AssaultPack_sgg";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellBlue";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 3 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
_Guy addItemToVest "100Rnd_65x39_caseless_black_mag";
for "_i" from 1 to 5 do {_Guy addItemToBackpack "100Rnd_65x39_caseless_black_mag";};
_Guy addHeadgear "H_HelmetB";
_Guy addGoggles "G_Balaclava_blk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


									};


				
    
				case "B_Soldier_GL_F": { 


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_MX_GL_Black_F";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";
_Guy addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
_Guy addWeapon "hgun_P07_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_BG_Guerrilla_6_1";
_Guy addVest "V_Rangemaster_belt";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellBlue";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToVest "30Rnd_65x39_caseless_black_mag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "1Rnd_HE_Grenade_shell";};
_Guy addHeadgear "H_HelmetB";
_Guy addGoggles "G_Bandanna_blk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


				};	
								
			
case "B_soldier_M_F":{

///B Marksman///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_MXM_Black_F";
_Guy addPrimaryWeaponItem "optic_MRCO";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";
_Guy addPrimaryWeaponItem "bipod_01_F_blk";
_Guy addWeapon "hgun_P07_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_BG_Guerrilla_6_1";
_Guy addVest "V_TacVest_blk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellBlue";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 5 do {_Guy addItemToVest "30Rnd_65x39_caseless_black_mag";};
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
_Guy addHeadgear "H_HelmetB";
_Guy addGoggles "G_Bandanna_blk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



					};
			
			
case "B_recon_F":{

///B Scout///	


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "SMG_02_F";
_Guy addPrimaryWeaponItem "optic_Aco";
_Guy addPrimaryWeaponItem "30Rnd_9x21_Mag_SMG_02";
_Guy addWeapon "hgun_P07_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_BG_Guerrilla_6_1";
_Guy addVest "V_PlateCarrier1_blk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellBlue";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 8 do {_Guy addItemToVest "30Rnd_9x21_Mag_SMG_02";};
_Guy addHeadgear "H_HelmetB";
_Guy addGoggles "G_Bandanna_blk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



				};

				
case "B_recon_TL_F":{

///B Spec Ops///	


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_MXC_Black_F";
_Guy addPrimaryWeaponItem "muzzle_snds_H";
_Guy addPrimaryWeaponItem "optic_Aco";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";
_Guy addWeapon "hgun_P07_F";
_Guy addHandgunItem "muzzle_snds_L";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_BG_Guerrilla_6_1";
_Guy addVest "V_Chestrig_blk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellBlue";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 6 do {_Guy addItemToVest "30Rnd_65x39_caseless_black_mag";};
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 3 do {_Guy addItemToVest "APERSBoundingMine_Range_Mag";};
_Guy addHeadgear "H_HelmetB";
_Guy addGoggles "G_Balaclava_combat";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


};				

				
case "I_soldier_F":{

	///G Rifleman///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_TRG20_F";
_Guy addPrimaryWeaponItem "30Rnd_556x45_Stanag";
_Guy addWeapon "hgun_Pistol_heavy_01_F";
_Guy addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_Guy forceAddUniform "U_I_CombatUniform";
_Guy addVest "V_TacVest_oli";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 3 do {_Guy addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 6 do {_Guy addItemToVest "30Rnd_556x45_Stanag";};
_Guy addHeadgear "H_HelmetIA";
_Guy addGoggles "G_Balaclava_oli";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



};						


case "I_Soldier_AR_F":{


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "LMG_Mk200_F";
_Guy addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
_Guy addWeapon "hgun_Pistol_heavy_01_F";
_Guy addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_Guy forceAddUniform "U_I_CombatUniform";
_Guy addVest "V_BandollierB_rgr";
_Guy addBackpack "B_AssaultPack_dgtl";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 3 do {_Guy addItemToVest "11Rnd_45ACP_Mag";};
_Guy addItemToVest "200Rnd_65x39_cased_Box";
for "_i" from 1 to 3 do {_Guy addItemToBackpack "200Rnd_65x39_cased_Box";};
_Guy addHeadgear "H_HelmetIA";
_Guy addGoggles "G_Balaclava_oli";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


};		

case "I_Soldier_GL_F":{


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_Mk20_GL_F";
_Guy addPrimaryWeaponItem "30Rnd_556x45_Stanag";
_Guy addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
_Guy addWeapon "hgun_Pistol_heavy_01_F";
_Guy addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_Guy forceAddUniform "U_I_CombatUniform";
_Guy addVest "V_Chestrig_rgr";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 3 do {_Guy addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "1Rnd_HE_Grenade_shell";};
_Guy addHeadgear "H_HelmetIA";
_Guy addGoggles "G_Balaclava_oli";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



};		
	
case "I_Soldier_M_F":{
///G Marksman///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "srifle_EBR_F";
_Guy addPrimaryWeaponItem "optic_MRCO";
_Guy addPrimaryWeaponItem "20Rnd_762x51_Mag";
_Guy addPrimaryWeaponItem "bipod_03_F_blk";
_Guy addWeapon "hgun_Pistol_heavy_01_F";
_Guy addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_Guy forceAddUniform "U_I_CombatUniform";
_Guy addVest "V_TacVest_oli";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 3 do {_Guy addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "20Rnd_762x51_Mag";};
_Guy addHeadgear "H_HelmetIA";
_Guy addGoggles "G_Balaclava_oli";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



};


case "I_Soldier_SL_F":{
///G Scout//////


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "hgun_PDW2000_F";
_Guy addPrimaryWeaponItem "optic_ACO_grn";
_Guy addPrimaryWeaponItem "30Rnd_9x21_Mag";
_Guy addWeapon "hgun_Pistol_heavy_01_F";
_Guy addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_Guy forceAddUniform "U_I_CombatUniform";
_Guy addVest "V_PlateCarrier1_rgr";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellGreen";};
_Guy addItemToUniform "30Rnd_9x21_Mag";
for "_i" from 1 to 3 do {_Guy addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 8 do {_Guy addItemToVest "30Rnd_9x21_Mag";};
_Guy addHeadgear "H_HelmetIA";
_Guy addGoggles "G_Balaclava_oli";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


};

case "I_Soldier_TL_F":{
///G Spec///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_TRG20_F";
_Guy addPrimaryWeaponItem "muzzle_snds_M";
_Guy addPrimaryWeaponItem "optic_ACO_grn";
_Guy addPrimaryWeaponItem "30Rnd_556x45_Stanag";
_Guy addWeapon "hgun_Pistol_heavy_01_F";
_Guy addHandgunItem "muzzle_snds_acp";
_Guy addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
_Guy forceAddUniform "U_I_CombatUniform";
_Guy addVest "V_Chestrig_rgr";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {_Guy addItemToUniform "30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_Guy addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_Guy addItemToVest "APERSBoundingMine_Range_Mag";};
_Guy addHeadgear "H_HelmetIA";
_Guy addGoggles "G_Balaclava_oli";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



};
	
	
					
case "O_Soldier_F":{


	///R Rifleman///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_Katiba_F";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_green";
_Guy addWeapon "hgun_Rook40_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_O_OfficerUniform_ocamo";
_Guy addVest "V_TacVest_khk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "30Rnd_65x39_caseless_green";
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellRed";};
for "_i" from 1 to 7 do {_Guy addItemToVest "30Rnd_65x39_caseless_green";};
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
_Guy addHeadgear "H_HelmetO_ocamo";
_Guy addGoggles "G_Bandanna_khk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


				
						};

case "O_Soldier_AR_F":{


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "LMG_Zafir_F";
_Guy addPrimaryWeaponItem "150Rnd_762x54_Box";
_Guy addWeapon "hgun_Rook40_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_O_OfficerUniform_ocamo";
_Guy addVest "V_BandollierB_cbr";
_Guy addBackpack "B_AssaultPack_cbr";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellRed";};
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
_Guy addItemToVest "150Rnd_762x54_Box";
for "_i" from 1 to 2 do {_Guy addItemToBackpack "150Rnd_762x54_Box";};
_Guy addItemToBackpack "150Rnd_762x54_Box_Tracer";
_Guy addHeadgear "H_HelmetO_ocamo";
_Guy addGoggles "G_Bandanna_khk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";

				
				
						};


case "O_Soldier_GL_F":{


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_Katiba_GL_F";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_green";
_Guy addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
_Guy addWeapon "hgun_Rook40_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_O_OfficerUniform_ocamo";
_Guy addVest "V_Chestrig_khk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellRed";};
_Guy addItemToUniform "30Rnd_65x39_caseless_green";
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "30Rnd_65x39_caseless_green";};
for "_i" from 1 to 5 do {_Guy addItemToVest "1Rnd_HE_Grenade_shell";};
_Guy addHeadgear "H_HelmetO_ocamo";
_Guy addGoggles "G_Bandanna_khk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


				
						};

case "O_soldier_M_F":{

///R Marksman///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "srifle_DMR_01_F";
_Guy addPrimaryWeaponItem "optic_MRCO";
_Guy addPrimaryWeaponItem "10Rnd_762x54_Mag";
_Guy addPrimaryWeaponItem "bipod_02_F_blk";
_Guy addWeapon "hgun_Rook40_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_O_OfficerUniform_ocamo";
_Guy addVest "V_TacVest_brn";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellRed";};
_Guy addItemToUniform "10Rnd_762x54_Mag";
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 7 do {_Guy addItemToVest "10Rnd_762x54_Mag";};
_Guy addHeadgear "H_HelmetO_ocamo";
_Guy addGoggles "G_Bandanna_khk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


};

case "O_recon_F":{

///R Scout//////


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "SMG_01_F";
_Guy addPrimaryWeaponItem "optic_Aco";
_Guy addPrimaryWeaponItem "30Rnd_45ACP_Mag_SMG_01";
_Guy addWeapon "hgun_Rook40_F";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_O_OfficerUniform_ocamo";
_Guy addVest "V_PlateCarrier1_blk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellRed";};
_Guy addItemToUniform "30Rnd_45ACP_Mag_SMG_01";
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 10 do {_Guy addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
_Guy addHeadgear "H_HelmetO_ocamo";
_Guy addGoggles "G_Bandanna_khk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";


};

case "O_recon_TL_F":{

///R Spec///


comment "Remove existing items";
removeAllWeapons _Guy;
removeAllItems _Guy;
removeAllAssignedItems _Guy;
removeUniform _Guy;
removeVest _Guy;
removeBackpack _Guy;
removeHeadgear _Guy;
removeGoggles _Guy;

comment "Add weapons";
_Guy addWeapon "arifle_Katiba_C_F";
_Guy addPrimaryWeaponItem "muzzle_snds_H";
_Guy addPrimaryWeaponItem "optic_Aco";
_Guy addPrimaryWeaponItem "30Rnd_65x39_caseless_green";
_Guy addWeapon "hgun_Rook40_F";
_Guy addHandgunItem "muzzle_snds_L";
_Guy addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_Guy forceAddUniform "U_O_OfficerUniform_ocamo";
_Guy addVest "V_Chestrig_khk";

comment "Add items to containers";
_Guy addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_Guy addItemToUniform "MiniGrenade";};
_Guy addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_Guy addItemToUniform "SmokeShellRed";};
_Guy addItemToUniform "30Rnd_65x39_caseless_green";
for "_i" from 1 to 2 do {_Guy addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 5 do {_Guy addItemToVest "30Rnd_65x39_caseless_green";};
for "_i" from 1 to 3 do {_Guy addItemToVest "APERSBoundingMine_Range_Mag";};
_Guy addHeadgear "H_HelmetO_ocamo";
_Guy addGoggles "G_Bandanna_khk";

comment "Add items";
_Guy linkItem "ItemMap";
_Guy linkItem "ItemCompass";
_Guy linkItem "ItemWatch";
_Guy linkItem "ItemRadio";



};

						
								
								
								}; ///end switch///
						
			
			
			
			
			
			
			
			
			
			
			
			