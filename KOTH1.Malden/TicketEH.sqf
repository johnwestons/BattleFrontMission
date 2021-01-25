////TicketEH.sqf///
	if (!isServer) exitWith {};
	
	private "_UnitSide";
			

			while {true}do {
			
					sleep 2;
			
			
					_UnitsList = allUnits;
						
						{
							_UnitSide = side _x;
								
								
					_EHcheck = _x getVariable ["EH", 0];
	         
		if (_EHcheck > 0)then {_UnitSide = 0;}else { _x setVariable ["EH", 1]; };
			 
								
								
							switch _UnitSide do {
	case West: { _x addEventHandler ["Killed", {BlueTickets = BlueTickets - 0.5;}]; };
	
	case East: { _x addEventHandler ["Killed", {RedTickets = RedTickets - 0.5;}]; };								
									
	case Resistance: { _x addEventHandler ["Killed", {GreenTickets = GreenTickets - 0.5;}];};									
													
							
													};

							
						
									}forEach _UnitsList;
						
						
			
			
								};