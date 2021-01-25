class jWs_ClassChange
{
	idd = 55104;
	movingEnabled = true;
	
	class controls
	{



////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Gamer, v1.063, #Dobeja)
////////////////////////////////////////////////////////

class RscFrame_1800: RscFrame
{
	idc = 1800;
	x = 0.37091 * safezoneW + safezoneX;
	y = 0.236152 * safezoneH + safezoneY;
	w = 0.211238 * safezoneW;
	h = 0.362791 * safezoneH;
};
class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "bkJWS.jpg";
	x = 0.376778 * safezoneW + safezoneX;
	y = 0.247146 * safezoneH + safezoneY;
	w = 0.199502 * safezoneW;
	h = 0.340803 * safezoneH;
	moving = true;
};

class bttnClass1: RscButton
{
	idc = 1600;
	text = "RifleMan"; //--- ToDo: Localize;
	x = 0.406117 * safezoneW + safezoneX;
	y = 0.357082 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.032981 * safezoneH;
	action = [0] execVM "ClassSwitch.sqf";
	
};
class bttnClass2: RscButton
{
	idc = 1601;
	text = "AutoRifleman"; //--- ToDo: Localize;
	x = 0.406117 * safezoneW + safezoneX;
	y = 0.412051 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.032981 * safezoneH;
	action = [1] execVM "ClassSwitch.sqf";
};
class bttnClass3: RscButton
{
	idc = 1602;
	text = "Grenadier"; //--- ToDo: Localize;
	x = 0.406117 * safezoneW + safezoneX;
	y = 0.467019 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.032981 * safezoneH;
	action = [2] execVM "ClassSwitch.sqf";
};
class bttnClass6: RscButton
{
	idc = 1603;
	text = "Recon"; //--- ToDo: Localize;
	x = 0.488265 * safezoneW + safezoneX;
	y = 0.467019 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.032981 * safezoneH;
	action = [3] execVM "ClassSwitch.sqf";
};
class bttnClass4: RscButton
{
	idc = 1604;
	text = "Marksman"; //--- ToDo: Localize;
	x = 0.488265 * safezoneW + safezoneX;
	y = 0.357082 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.032981 * safezoneH;
	action = [4] execVM "ClassSwitch.sqf";
};
class bttnClass5: RscButton
{
	idc = 1605;
	text = "Scout"; //--- ToDo: Localize;
	x = 0.488265 * safezoneW + safezoneX;
	y = 0.412051 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.032981 * safezoneH;
	action = [5] execVM "ClassSwitch.sqf";
};
class bttnWest: RscButton
{
	idc = 1606;
	text = "Blue"; //--- ToDo: Localize;
	x = 0.388513 * safezoneW + safezoneX;
	y = 0.29112 * safezoneH + safezoneY;
	w = 0.0469417 * safezoneW;
	h = 0.0439746 * safezoneH;
	action = [6] execVM "ClassSwitch.sqf";
};
class bttnEast: RscButton
{
	idc = 1607;
	text = "Red"; //--- ToDo: Localize;
	x = 0.453058 * safezoneW + safezoneX;
	y = 0.29112 * safezoneH + safezoneY;
	w = 0.0469417 * safezoneW;
	h = 0.0439746 * safezoneH;
	action = [7] execVM "ClassSwitch.sqf";
};
class bttnInd: RscButton
{
	idc = 1608;
	text = "Green"; //--- ToDo: Localize;
	x = 0.517603 * safezoneW + safezoneX;
	y = 0.29112 * safezoneH + safezoneY;
	w = 0.0469417 * safezoneW;
	h = 0.0439746 * safezoneH;
	action = [8] execVM "ClassSwitch.sqf";
};
class textFaction1: RscText
{
	idc = 1000;
	text = "Faction"; //--- ToDo: Localize;
	x = 0.388513 * safezoneW + safezoneX;
	y = 0.246152 * safezoneH + safezoneY;
	w = 0.0469417 * safezoneW;
	h = 0.0549683 * safezoneH;
};
class textFaction2: RscText
{
	idc = 1001;
	text = "None"; //--- ToDo: Localize;
	x = 0.429587 * safezoneW + safezoneX;
	y = 0.246152 * safezoneH + safezoneY;
	w = 0.0469417 * safezoneW;
	h = 0.0549683 * safezoneH;
};
class class1: RscText
{
	idc = 1002;
	text = "Class"; //--- ToDo: Localize;
	x = 0.464794 * safezoneW + safezoneX;
	y = 0.246152 * safezoneH + safezoneY;
	w = 0.0469417 * safezoneW;
	h = 0.0549683 * safezoneH;
};
class class2: RscText
{
	idc = 1003;
	text = "None"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.246152 * safezoneH + safezoneY;
	w = 0.0645449 * safezoneW;
	h = 0.0549683 * safezoneH;
};

class Exit: RscButton
{
	idc = 1610;
	text = "x"; //--- ToDo: Localize;
	x = 0.55 * safezoneW + safezoneX;
	y = 0.236152 * safezoneH + safezoneY;
	w = 0.0245449 * safezoneW;
	h = 0.0549683 * safezoneH;
	action = closeDialog 0;
};



class Go1: RscButton
{
	idc = 1609;
	text = "Ready"; //--- ToDo: Localize;
	x = 0.453058 * safezoneW + safezoneX;
	y = 0.510994 * safezoneH + safezoneY;
	w = 0.0528094 * safezoneW;
	h = 0.0439746 * safezoneH;
	action = [9] execVM "ClassSwitch.sqf";
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

			};

				};
