image_xscale = 1;
image_yscale = 1;
justHit = false;
imageCycleHit = 0;
dudehp = 10;
justHitCooldown = 0
type = 0;
walk = 0;
walkCycle = 5;
holding = 0;
left = false;

//Movement and Collision from Shaun Spalding's Action RPG

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

//Random Weapon

randomize();
weaponRand1 = irandom(5);
weaponRand2 = irandom(4);
weaponRand3 = irandom(5);
