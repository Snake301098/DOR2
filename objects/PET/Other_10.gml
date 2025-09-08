/// @description GUNS INSTALLATION

guns=0
MaxDamage=0;
var slot = global.pet_guns[1];
if slot != "" and slot != "noone" then {MaxDamage+=info(slot,"damage");guns+=1;}
slot = global.pet_guns[2];
if slot != "" and slot != "noone" then {MaxDamage+=info(slot,"damage");guns+=1;}
slot = global.pet_guns[3];
if slot != "" and slot != "noone" then {MaxDamage+=info(slot,"damage");guns+=1;}
slot = global.pet_guns[4];
if slot != "" and slot != "noone" then {MaxDamage+=info(slot,"damage");guns+=1;}
slot = global.pet_guns[5];
if slot != "" and slot != "noone" then {MaxDamage+=info(slot,"damage");guns+=1;}

