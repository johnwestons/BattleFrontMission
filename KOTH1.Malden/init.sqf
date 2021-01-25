///init.sqf///

	if (!isServer) exitWith {};	


		_AmountOfTickets = "TicketsAmount" call BIS_fnc_getParamValue;
		_AmountOfPoints = "CPpointsAmount" call BIS_fnc_getParamValue;
	
	
		BlueTickets = _AmountOfTickets;
		RedTickets = _AmountOfTickets;
		GreenTickets = _AmountOfTickets;
		CpPointsBlue = 0;
		CpPointsRed = 0;
		CpPointsGreen = 0;
		
		
		execVM "CapturePoints.sqf";
		execVM "TicketEH.sqf";
		execVM "CpPoints.sqf";
		
		
		////[Player]execVM "Loadout.sqf";
		
				Initloop = true; 
		
			while {true}do {
			
		//Points//	
	["<t color='#FFFFFF' size = '0.5'>POINTS</t>",safeZoneX-0.46, safeZoneY+safeZoneH-1.80, 5, 0, 0, 804] spawn BIS_fnc_dynamicText;
		//////////		
			
		//BluePoints//
		_CPblue = format ["%1%2%3","<size='0.5'/><t color='#004D99'>",CpPointsBlue, "</t>"];		
		[_CPblue,safeZoneX-0.46, safeZoneY+safeZoneH-1.61, 5, 0, 0, 803] spawn BIS_fnc_dynamicText;
		//////////	
		
		//RedPoints//
		_CPRed = format ["%1%2%3","<size='0.5'/><t color='#800000'>",CpPointsRed, "</t>"];		
		[_CPRed,safeZoneX-0.46, safeZoneY+safeZoneH-1.68, 5, 0, 0, 802] spawn BIS_fnc_dynamicText;
		//////////	
		
		//GreenPoints//
		_CPGreen = format ["%1%2%3","<size='0.5'/><t color='#008000'>",CpPointsGreen, "</t>"];		
		[_CPGreen,safeZoneX-0.46, safeZoneY+safeZoneH-1.75, 5, 0, 0, 801] spawn BIS_fnc_dynamicText;
		//////////	
		

		//Tickets//	
	["<t color='#FFFFFF' size = '0.5'>TICKETS</t>",safeZoneX-0.455, safeZoneY+safeZoneH-1.52, 5, 0, 0, 704] spawn BIS_fnc_dynamicText;
		//////////
		
		//BlueTickets//
		_Tblue = format ["%1%2%3","<size='0.4'/><t color='#004D99'>",BlueTickets, "</t>"];		
		[_Tblue,safeZoneX-0.46, safeZoneY+safeZoneH-1.47, 5, 0, 0, 703] spawn BIS_fnc_dynamicText;
		//////////	
		
		//RedTickets//
		_TRed = format ["%1%2%3","<size='0.4'/><t color='#800000'>",RedTickets, "</t>"];		
		[_TRed,safeZoneX-0.46, safeZoneY+safeZoneH-1.40, 5, 0, 0, 702] spawn BIS_fnc_dynamicText;
		//////////	
		
		//GreenTickets//
		_TGreen = format ["%1%2%3","<size='0.4'/><t color='#008000'>",GreenTickets, "</t>"];		
		[_TGreen,safeZoneX-0.46, safeZoneY+safeZoneH-1.33, 5, 0, 0, 701] spawn BIS_fnc_dynamicText;
		//////////	
		
		
		
		
			if (BlueTickets < 1)then {BlueTickets = 0;};
			if (RedTickets < 1)then {RedTickets = 0;};
			if (GreenTickets < 1)then {GreenTickets = 0;};
			
			
			_SideArray = [West,East,Resistance];
						
			sleep 4;
			
						
			if(CpPointsBlue >= _AmountOfPoints)exitWith {
	
["<img size='10' image='blueDrJWS.jpg' shadow='0'/>", safeZoneX-0.15, safeZoneY+safeZoneH-1.50, 15, 1, 0, 892] spawn bis_fnc_dynamicText;
["<t color='#004D99' size = '2'>MISSION END<br />BLUE WINS</t>",-1,-1,15,0.5,0,789] spawn BIS_fnc_dynamicText;
							
			["end1", true, 6, true] spawn BIS_fnc_endMission;
			
					Initloop = false;
							};
			
			///////////////////////////////
			
			if(CpPointsRed >= _AmountOfPoints)exitWith {
	
["<img size='10' image='bkJWS.jpg' shadow='0'/>", safeZoneX-0.15, safeZoneY+safeZoneH-1.50, 15, 1, 0, 892] spawn bis_fnc_dynamicText;
["<t color='#800000' size = '2'>MISSION END<br />RED WINS</t>",-1,-1,15,0.5,0,789] spawn BIS_fnc_dynamicText;
							
			["end1", true, 6, true] spawn BIS_fnc_endMission;
			
					Initloop = false;
							};
			
			///////////////////////////////////
			
				if(CpPointsGreen >= _AmountOfPoints)exitWith {
	
["<img size='10' image='greenDrJWS.jpg' shadow='0'/>", safeZoneX-0.15, safeZoneY+safeZoneH-1.50, 15, 1, 0, 892] spawn bis_fnc_dynamicText;
["<t color='#008000' size = '2'>MISSION END<br />GREEN WINS</t>",-1,-1,15,0.5,0,789] spawn BIS_fnc_dynamicText;
							
			["end1", true, 6, true] spawn BIS_fnc_endMission;
			
					Initloop = false;
							};
			
			
			
			
			
			
			
					
					};
			
			
		










		
			
			