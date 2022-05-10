image_speed = .5

if (hp <= 0)
{
	instance_create_layer(x,y,layer,obj_blue_slime_pop);
	instance_destroy();
}

//Image Cycle

image_index = imageCycle + imageHit;

if image_index = 2
{
	imageCycle = 0;
}

if imageCycleTrigger = 10
{
imageCycle = imageCycle + 1;
imageCycleTrigger = 0;
}

imageCycleTrigger = imageCycleTrigger + 1

// Image Stuff 

if justHit = true
{
	image_index = image_index + 3;
	justHit = false;
}

// Movement

direction = point_direction(x,y,obj_dude_1.x,obj_dude_1.y);

movementCycleTimer -= 1;

if point_distance(x,y,obj_dude_1.x,obj_dude_1.y) < 128 && movementCycleTimer <= 0 && justHit != true
{	
	//Slow ramp up and ramp down of speed
	
	movementCycleTimerInternal += 1;
	
	if movementCycleTimerInternal <= 5 && movementCycleTimerInternal >= 0
	{
		speed = .25
		image_yscale = .9
	}
	
	if movementCycleTimerInternal <= 10 && movementCycleTimerInternal >= 5
	{
		speed = .5
		image_yscale = .8
	}
	
	if movementCycleTimerInternal <= 20 && movementCycleTimerInternal >= 10
	{
		speed = .75
		image_yscale = .7
	}
	
	if movementCycleTimerInternal <= 25 && movementCycleTimerInternal >= 20
	{
		speed = .5
		image_yscale = .8
	}
	
	if movementCycleTimerInternal <= 30 && movementCycleTimerInternal >= 25
	{
		speed = .25
		image_yscale = .9
	}
	
	if movementCycleTimerInternal >= 30
	{
		movementCycleTimer = 30;
		movementCycleTimerInternal = 0;
	}
}
else
{
	speed = 0;
	image_yscale = 1;
}
