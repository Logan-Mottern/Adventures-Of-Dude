image_speed = .5

if (hp) <= 0
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
	imageCycleHit = 5;
	justHit = false;
}

if imageCycleHit > 0
{
	imageCycleHit = imageCycleHit - 1;
	imageHit = 3;
}
else
{
	imageHit = 0;
}
