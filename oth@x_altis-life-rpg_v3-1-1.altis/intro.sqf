/*
	File: fn_intro.sqf
	Author: Blindy
	Credit to Day0 server
	Displays introduction on init!
*/

private ["_civ","_cop"];

sleep 2;
_intro = [];
_civ = [format["Welcome to RoT Aussie Life",name player] hintC
[
		"We have implemented a new way of interacting with items/vehicles/players utilising the Windows Key, you can change this by setting up your Use Action 10 key.",
		"Current changes you need to know about:",
		"Turtles have had their price reduced back down to $3000 per turtle.",
		"Weed Smoking has been implemented!",
		"Shift H will allow you to surrender.",
		"All the rules can be located on the forums.  Visit us at http://www.reignofterrorclan.enjin.com/"
]];

_cop = [format["Welcome to RoT Aussie Life",name player] hintC
[
		"We have implemented a new way of interacting with players (as a cop) utilising the Windows Key, you can change this by setting up your Use Action 10 key.",
		"Current changes you need to know about:",
		"Turtles have had their price reduced back down to $3000 per turtle.",
		"Weed Smoking has been implemented!",
		"Shift H will allow you to surrender.",
		"Shift R restrains the civilian/rebel.",
		"All the rules can be located on the forums.  Visit us at http://www.reignofterrorclan.enjin.com/"
]];

switch (playerSide) do {
	case west: {
		{
			_intro = _intro + [(parseText _x)];
		} forEach _cop;
		_cop = _intro;
		"Welcome To Altis" hintC _cop;
	};
	case civilian: {
		{
			_intro = _intro + [(parseText _x)];
		} forEach _civ;
		_civ = _intro;
		"Welcome To Altis" hintC _civ;
	};
};