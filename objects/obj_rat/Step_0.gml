//Movement
if objM_backpack.inMenu = false
{
	if (keyboard_check(ord("S"))) 
	{
		y += 1;
		image_index = 6 + walkCycle;
	}	

	if (keyboard_check(ord("W"))) 
	{
		y += -1;
		image_index = 4 + walkCycle;
	}

	if (keyboard_check(ord("D")))
	{
		x += 1;
		image_index = 2 + walkCycle;
	}

	if (keyboard_check(ord("A"))) 
	{
		x += -1;
		image_index = 0 + walkCycle;
	}
}
// Walk Cycle

walkCycleTimer = walkCycleTimer - 1;

if (walkCycleTimer = 0) && (walkCycle = 1)
{
	walkCycle = 0;
	walkCycleTimer = walkCycleSpeed;
}

if (walkCycleTimer = 0) && (walkCycle = 0)
{
	walkCycle = 1;
	walkCycleTimer = walkCycleSpeed;
}
//Dance Cycle

if (previousX = x) && (previousY = y)
{
	image_index = 8 + walkCycle;
}

//Previous Position

timeSnapshot = timeSnapshot - 1

if (timeSnapshot = 0)
{
	previousX = x;
	previousY = y;
	timeSnapshot = 10;
}
