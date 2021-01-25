///ClassSwitch.sqf///
	

		
		private ["_GuySide","_GuyClass","_ColorIndex"];
		
		///varr comes from dialog actions///
		
		_AllowSideChange = "AllowSideChange" call BIS_fnc_getParamValue;
		
		_Varr = _this select 0;
		
		_Ready = false;
		
		switch _Varr do {
				
    case 0: { ctrlSetText [1003, "Rifleman"]; };
	case 1: { ctrlSetText [1003, "AutoRifleman"]; };
	case 2: { ctrlSetText [1003, "Grenadier"];};
	case 3: { ctrlSetText [1003, "Recon"];};
	case 4: { ctrlSetText [1003, "Marksman"];};
	case 5: { ctrlSetText [1003, "Scout"]; };
	case 6: { ctrlSetText [1001, "Blue"];};
	case 7: { ctrlSetText [1001, "Red"];};
	case 8: { ctrlSetText [1001, "Green"];};
	case 9: {_Ready = true;};
    
							};
		
		
	_ClassArray = ["Rifleman","Grenadier","AutoRifleman","Marksman","Scout","Recon"];	
		
	_UnitsBlue = ["B_Soldier_F","B_Soldier_GL_F","B_soldier_AR_F","B_soldier_M_F","B_recon_F","B_recon_TL_F"];

	_UnitsRed = ["O_Soldier_F","O_Soldier_GL_F","O_Soldier_AR_F","O_soldier_M_F","O_recon_F","O_recon_TL_F"];

	_UnitsGreen = ["I_soldier_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_M_F","I_Soldier_SL_F","I_Soldier_TL_F"];
	
	_UnitsArray = [_UnitsBlue,_UnitsRed,_UnitsGreen];
	
	_ColorArray = ["Blue","Red","Green"];
	
	_SideArray = [West,East,Resistance];
	
	_SpawnPointArray = ["respawn_west", "respawn_east","respawn_guerrila"];
	
		_ClassText = ctrlText 1003;
		
		_SideText = ctrlText 1001;
	
			_ClassIndex = _ClassArray find _ClassText;
			
			
	if(_AllowSideChange isEqualTo 1)then{_ColorIndex = _ColorArray find _SideText;}else{_ColorIndex = _SideArray find (side Player)};///allowsidechange check//
	
	
					if(_ColorIndex > -1)then{
					
		_GuySide = _SideArray select _ColorIndex;
										
 if(_ClassIndex > -1)then{ _GuyClass = (_UnitsArray select _ColorIndex) select _ClassIndex;}else {hint "Please select a class";};
					
					}else {hint "Please select a side";};
		

			if((_Ready && (_ClassIndex > -1)&&(_ColorIndex > -1)))then {
		
		_FindOldGuy = units (group Player);
				
		_Pos = getMarkerPos (_SpawnPointArray select _ColorIndex);			
		
		_Grp = createGroup [_GuySide, true]; 
		
		_NewGuy = _Grp createUnit [_GuyClass, _Pos, [], 5, "NONE"];
			
		sleep 0.2;	
			
		selectPlayer _NewGuy;
	
			deleteVehicle (_FindOldGuy select 0);
			
			[_NewGuy]execVM "Loadout.sqf";
			
			closeDialog 0;
		
						};
		
		
		
		
		
		
		
		