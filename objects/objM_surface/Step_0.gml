objM_backpack.inMenu = true

if (keyboard_check(ord("W")))
{
	image_index = menuCycle;
	menuCycle = 0;
}

if (keyboard_check(ord("S")))
{
	image_index = menuCycle;
	menuCycle = 1;
}
if keyboard_check(vk_space)
{
	if (menuCycle = 0)
	{
		objM_backpack.inMenu = false
		objM_backpack.isMovingToSurf = true
		room_goto_previous();
		instance_destroy();
	}
	else
	{
		objM_backpack.inMenu = false
		instance_destroy();
	}
}
