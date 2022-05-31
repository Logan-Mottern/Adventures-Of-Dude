if opening = true
{
	timer -= 1
	
	if shaking = 0
	{
		x += 1
		shaking = 1
	}
	
	if shaking = 1
	{
		x -= 1
		shaking = 0
	}
	
	if timer <= 0 && image_index = 0
	{
		ammo_drop(x+8,y+8,6,.5,0);
		image_index = 1;
	}
}

