speed = random_range(1, 2);
friction = 0.1;
direction = random(360);
image_speed = 0;

var _ammo = 0;


//Special
if obj_dev.special = 0
{
	//Low Tier Normals
	var _rand = irandom(2);
	if _rand = 0 _ammo = 0; //Standerd Normal
	if _rand = 1 _ammo = 2; //Shotgun Normal
	if _rand = 2 _ammo = 5; //Energy Normal
}


//Rarity
if random_range(0,1) < obj_dev.rarity _ammo += .5; 

//Set Image
image_index = _ammo * 2;

