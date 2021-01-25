////taskHandler.sqf///

if(!isServer)exitWith {};

	private ["_SideArray"];
	
	_SideArray = [West,East,Resistance];
	
	_DestinationArray = _this select 0;
	
	
				{
	
	for [{ _i = 0 }, { _i < 3 }, { _i = _i + 1 }] do { 
	
	/////for random task id, use side + time q.M1keSK////
	
	_RdmTask = random [0,1000,9999];
		
[_x, (str _RdmTask),["Capture CP", "Capture", ""], (_DestinationArray select _i), "ASSIGNED"] call BIS_fnc_taskCreate;
	
							
							};
							
			
				}forEach _SideArray;
							
							
							
						


						