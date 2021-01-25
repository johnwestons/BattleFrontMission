///Move.sqf///
		
if (!isServer) exitWith {};		
		
		
		private ["_NearObj","_Dis1","_CPs","_Guy","_Pos","_PosCount","_allpositions","_StuckTally","_PosTally"];
		
				_CPs = _this select 0;
				_Guy = _this select 1;
				
			_Pos = selectRandom _CPs;	
			_Dis1 = _Pos distance _Guy;
					
			
		while {_Dis1 > 20}do{
			
  _NearObj = nearestTerrainObjects [(getPos _Guy),["TREE", "SMALL TREE", "BUSH", "BUILDING", "HOUSE","FOREST BORDER", "FOREST TRIANGLE", "FOREST SQUARE", "CHURCH", "CHAPEL","CROSS", "BUNKER", "FORTRESS", "FOUNTAIN", "VIEW-TOWER","FUELSTATION", "HOSPITAL", "FENCE", "WALL", "HIDE", "BUSSTOP","FOREST","TRANSMITTER", "STACK", "RUIN","WATERTOWER","ROCK", "ROCKS"], 100, false, false];	
  
  _Dis1 = _Pos distance _Guy;
	
	if ((count _NearObj) > 0)then {
   
			_ObjRdm = selectRandom _NearObj;	
   		
		_Dis2 = _Pos distance _ObjRdm;
		_Dis1Mod = _Dis1 - 10;
		
		///_Dir1 = _Guy getDir _Pos;///
		///_Dir2 = _ObjRdm getDir _Pos;///
		
		///_Dir1Minus = _Dir1 - 30;///
		///_Dir1Plus = _Dir1 + 30;///
				     
////if(_Dir1Minus < 0)then{_Dir1Minus = _Dir1Minus + 360; };////	
////if(_Dir1Plus > 360)then{_Dir1Plus = _Dir1Plus - 360; };////					
					
		 ///&&(_Dir2 > _Dir1Minus)&&(_Dir2 < _Dir1Plus)///
  
if (_Dis2 < _Dis1Mod)  then {
				
							_Guy doMove (getPos _ObjRdm);
							sleep 0.2;
							_Guy moveTo (getPos _ObjRdm);
								
								sleep 8;
								
								};
					
								sleep 0.2;
								}else {  _Guy doMove _Pos; _Guy moveTo _Pos; sleep 8; };
								
								}; ///end while loop///
				
						while {alive _Guy}do {
				
				
				_NearH = (getPos _Guy) nearObjects ["House", 40];
				
				_HouseCount = count _NearH;
				
				if (_HouseCount > 0)then {
				
				_Hrdm = selectRandom _NearH;
					
				_allpositions =[_Hrdm] call BIS_fnc_buildingPositions;
				
				_PosCount = count _allpositions; 
									}else {  _Guy doMove _Pos; _Guy moveTo _Pos; sleep 30; };
				
					if(_PosCount > 0)then {
				
				_BPos = selectRandom _allpositions;
				
				_Guy doMove _BPos;
				
				sleep 45;
				};
				
				
				};
				
				
				
				
				
				