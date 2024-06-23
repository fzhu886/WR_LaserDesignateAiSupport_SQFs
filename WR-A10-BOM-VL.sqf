/*

***********************************************************************
*					   _____   ___       ___				___       *
* \        / |   |  |    |    |         |   |   /\  \    / |    |\  | *
*  \  /\  /  |---|  |    |    |--       |--\   /__\  \  /  |--  | \ | *
*   \/  \/   |   |  |    |    |___      |   \ /    \  \/   |___ |  \| *
*                                                                     *
***********************************************************************

1) Place player down and add a laser designator and battery to the player

2) Place a trigger down and change/add the following:

	Activation = Radio Bravo
	
	Repeatable = Tick
	
	On Activation = WR_A10BVR = [getPosATL laserTarget player] execVM "WR-A10-BOM-VL.sqf";

*/

//-------------------------------------------------------------- Params

params [

	"_position",["_vehicle","B_Plane_CAS_01_F"],["_type",3],"_logic"

];

_logic = "Logic" createVehicleLocal _position;
_logic setVariable ["vehicle",_vehicle];
_logic setVariable ["type",_type];

[_logic,nil,true] call BIS_fnc_moduleCAS;

deleteVehicle _logic;

/*---------------------------------------------------------- Script end

Special thanks to: Millenwise (beno_83au) where I used the bulk of their script: MIL_CAS.