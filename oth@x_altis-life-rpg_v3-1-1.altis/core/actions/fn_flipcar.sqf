private "_veh";
_veh = cursorTarget; //_veh = target
life_interrupted = false; //Not sure if its even needed
if(isNull _veh) exitwith {}; //Probably pointless too, because the gui doesnt open without a target
if ({alive _x} count crew _veh == 0) then {
if (damage _veh < 0.02) then {
_veh setPosASL [getPosASL _veh select 0, getPosASL _veh select 1,(getPosASL _veh select 2)+0.5];//ADD 0.5 metres to the height of current position
_veh setVectorUp [0,0,1];//Neutral out the position of vehicle
   titleText["You've flipped your vehicle back to normal...hopefully.","PLAIN"];
   } else {
   titleText["You cannot flip your vehicle because its damaged.","PLAIN"];
   }
  } else {
   hint format ["There are players in the car."];
  };