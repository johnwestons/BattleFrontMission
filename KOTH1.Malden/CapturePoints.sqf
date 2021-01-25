////CapturePoints.sqf////
	if (!isServer) exitWith {};


private ["_PointsArray1","_MarkerArray","_Modifier","_PointsArray2","_PointsArray3","_PointsArray4","_PointsArray5","_PointsArray6","_PointsArray7"];
		
		_PointsArray1 = [[8244.31,3222.57,0],[8266.38,3087.3,0],[8145.2,3166.02,0]]; ///points correspond with markers on map starting with marker "Pos0_1"//
		_PointsArray2 = [[5821.75,3501.47,0],[5764.12,3578.03,0],[5860.21,3571.02,0]];
		_PointsArray3 = [[5512.59,2741.49,0],[5401.86,2683.9,0],[5392.78,2820.13,0]];
		_PointsArray4 = [[3615.07,3276.79,0],[3764.14,3217.28,0],[3745.85,3054.84,0]];
		_PointsArray5 = [[3131.2,6302.77,0],[3137.62,6423.62,0],[3219.06,6353.16,0]];
		_PointsArray6 = [[5547.26,6945.57,0],[5604.02,7001.77,0],[5486.32,7032.29,0]];
		_PointsArray7 = [[7088.31,6029.61,0],[7146.21,6107.48,0],[7023.65,6120.56,0]];
		_PointsArray8 = [[6997.44,7095.36,0],[7092.2,7102.9,0],[7017.89,7170.7,0]];
		_PointsArray9 = [[7337.07,7942.44,0],[7314.7,8047.57,0],[7249.51,7976.4,0]];
		_PointsArray10 = [[6091.86,8602.85,0],[6002.67,8575.97,0],[6039.88,8659.98,0]];
		_PointsArray11 = [[7191.31,8968.34,0],[7140,9014.35,0],[7074.1,8961.51,0]];
		_PointsArray12 = [[6291.11,10719.9,0],[6118,10852.9,0],[5860.37,10779.9,0]];
		
		
		
		_SpawnArray1 = [[8536.16,3347.99,0],[8353.6,2917.79,0],[7915.46,3197.61,0]];
		_SpawnArray2 = [[6047.86,3696.83,0],[5717.92,3375,0],[5589.28,3682.15,0]];
		_SpawnArray3 = [[5615.26,2929.61,0],[5194.34,2918.95,0],[5476.17,2449.68,0]]; 	
		_SpawnArray4 = [[3815.96,3478.08,0],[3429.74,3530.19,0],[3994.99,2970.92,0]];	
		_SpawnArray5 = [[3179.05,6598.94,0],[3390.51,6309.1,0],[2908.59,6142.54,0]];	
		_SpawnArray6 = [[5766.19,7180.38,0],[5607.29,6729.51,0],[5298.48,6983.47,0]];	
		_SpawnArray7 = [[7187.61,6271.51,0],[7366.91,5944.99,0],[6970.81,5853.46,0]];	
		_SpawnArray8 = [[7294.89,7288.74,0],[6764.42,7230.01,0],[7242.73,6954.34,0]];
		_SpawnArray9 = [[7411.86,8156.98,0],[7404.77,7834.59,0],[7003.34,7946.89,0]];
		_SpawnArray10 = [[6130.98,8828.85,0],[5899.67,8714.75,0],[6048.43,8391.55,0]];	 	
		_SpawnArray11 = [[7013.58,9216.81,0],[7370.09,8955.9,0],[6940.76,8783.67,0]];
		_SpawnArray12 = [[6344.11,10432.7,0],[6255.22,11063.3,0],[5616.49,10706.4,0]];
		
			
			
		_PA = [_PointsArray1,_PointsArray2,_PointsArray3,_PointsArray4,_PointsArray5,_PointsArray6,_PointsArray7,_PointsArray8,_PointsArray9,_PointsArray10,_PointsArray11,_PointsArray12];
		_SA = [_SpawnArray1,_SpawnArray2,_SpawnArray3,_SpawnArray4,_SpawnArray5,_SpawnArray6,_SpawnArray7,_SpawnArray8,_SpawnArray9,_SpawnArray10,_SpawnArray11,_SpawnArray12];	
			
			_PArdm = selectRandom _PA;
			_INX = _PA find _PArdm;
		
		_SpawnPoints = _SA select _INX;
		
		
		
		
		_MarkerArray = ["CP1","CP2","CP3"];
		
		for [{ _i = 0 }, { _i < 3 }, { _i = _i + 1 }] do { 
		
					
					(_MarkerArray select _i) setMarkerPos (_PArdm select _i);
							
										};
				
			_RespawnMarkerArray = ["respawn_west","respawn_east","respawn_guerrila"];


		
		for [{ _i = 0 }, { _i < 3 }, { _i = _i + 1 }] do { 
		
					
					(_RespawnMarkerArray select _i) setMarkerPos (_SpawnPoints select _i);
							
										};	
				
				
				
		
		
		[_SpawnPoints,_PArdm]execVM "SpawnScript.sqf";	
		[_PArdm]execVM "taskHandler.sqf";
		
		
		_Modifier = 0;
		
		while {true} do {
		
		///CP1 check area///
		
		_CP1Units = (_PArdm select _Modifier) nearObjects ["Man", 30];
						
							
			///sort units by side and count them///
				
				_CP1CurrentB = _CP1Units select {side _x == west}; 	
							
				_CP1CurrentR = _CP1Units select {side _x == east}; 	
				
				_CP1CurrentG = _CP1Units select {side _x == resistance}; 
				
				_countBlue = count _CP1CurrentB;
				
				_countRed = count _CP1CurrentR;
				
				_countGreen = count _CP1CurrentG;
				
					_Control = 0;
				
 if ((_countBlue > _countRed)&&(_countBlue > _countGreen)) then {_Control = 1;};

 if ((_countRed > _countBlue)&&(_countRed > _countGreen)) then {_Control = 2;};
 
 if ((_countGreen > _countRed)&&(_countGreen > _countBlue)) then {_Control = 3;};
				
					
				///update CP///

							_Mkr = _MarkerArray select _Modifier;
							
				switch _Control do {
							case 1: { _Mkr setMarkerColor "ColorBlue";};
							case 2: { _Mkr setMarkerColor "ColorRed"; };
							case 3: { _Mkr setMarkerColor "ColorGreen";};
							
							
										};

										
					_Modifier = _Modifier + 1;
							if (_Modifier > 2)then {_Modifier = 0;};
				
								sleep 0.2;
				
												};				

														
			




				
				
				
				
				
				
				
				
				