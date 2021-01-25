///SpawnScript.sqf////

		if(isServer)then {


				
			_SpawnLimit = "SpawnLimit" call BIS_fnc_getParamValue;

				_Modifier = 0;

				_CPs = _this select 1;

			_Center = _this select 0;

				_SideArray = [West,East,Resistance];	
																		
			_UnitsBlue = ["B_Soldier_F","B_Soldier_GL_F","B_soldier_AR_F","B_soldier_M_F","B_recon_F","B_recon_TL_F"];

			_UnitsRed = ["O_Soldier_F","O_Soldier_GL_F","O_Soldier_AR_F","O_soldier_M_F","O_recon_F","O_recon_TL_F"];

			_UnitsGreen = ["I_soldier_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_M_F","I_Soldier_SL_F","I_Soldier_TL_F"];

			_UnitsArray = [_UnitsBlue,_UnitsRed,_UnitsGreen];

				
				///_PlaySide = side Player;
				
				///_FindSide = _SideArray find _PlaySide;
				
				///player setPos (_Center select _FindSide);
				
				
			while {true} do {
			
		 
		 _TicketArray = [BlueTickets,RedTickets,GreenTickets];
		 
		 _NumbersCheck = allUnits;
		 
		 _SideNumbers = _NumbersCheck select {side _x == (_SideArray select _Modifier)}; 

		 _CountUnits = count _SideNumbers;
		 
		_SelTicket = _TicketArray select _Modifier; 
		 
			 
	if ((_SelTicket > 0 )&&(_CountUnits < _SpawnLimit))then {	 
		 
		 _PosSel = _Center select _Modifier;
		 
		_Pos = _PosSel getPos [(random [15, 30, 60]), (random [0, 180, 360])]; 
							
	_Grp = createGroup [(_SideArray select _Modifier), true]; 
					
			_Units = _UnitsArray select _Modifier;			
				
	 _Guy = _Grp createUnit [(selectRandom _Units), _Pos, [], 20,"NONE"];
			
				_GuySide = _SideArray select _Modifier;	
			
					[_Guy]execVM "Loadout.sqf";
			
					[_CPs,_Guy]execVM "Move.sqf";
			
					};		
							
							
							_Modifier = _Modifier + 1;
							
							if(_Modifier > 2)then {_Modifier = 0;};
							
							
							
							};
				
				
				
				
				
				
								};///end server check
				
				
				
				
				
				



		