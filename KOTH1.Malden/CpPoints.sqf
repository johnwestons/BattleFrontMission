////CpPoints.sqf////

if (!isServer) exitWith {};


		_MarkerArray = ["CP1","CP2","CP3"];

			   
						_BluTally = 0;
						_RedTally = 0;
						_GreenTally = 0;
		
			while {true}do {
				
			_CntArray = [];	
				
				{
				
			_MkrColor = markerColor _x;
			
				_CntArray pushBack _MkrColor;
						
							}forEach _MarkerArray;
	   
					_BluCnt = {_x isEqualTo "ColorBlue"} count _CntArray;	
	   
					_RedCnt = {_x isEqualTo "ColorRed"} count _CntArray;
					
					_GreenCnt = {_x isEqualTo "ColorGreen"} count _CntArray;
	   
				if( _BluCnt >= 2 )then{ _BluTally = _BluTally + 1; };
				if( _RedCnt >= 2 )then{ _RedTally = _RedTally + 1; };
				if( _GreenCnt >= 2 )then{ _GreenTally = _GreenTally + 1; };
	   
					sleep 1;
					
	if( _BluTally >= 30 )then{ _BluTally = 0; CpPointsBlue = CpPointsBlue + 1;};
	if( _RedTally >= 30 )then{ _RedTally = 0; CpPointsRed = CpPointsRed + 1;};
	if( _GreenTally >= 30 )then{ _GreenTally = 0; CpPointsGreen = CpPointsGreen +1;};	
					
	   };
	   
	   
		
		
	   
	 





	 
	   
	   
	   