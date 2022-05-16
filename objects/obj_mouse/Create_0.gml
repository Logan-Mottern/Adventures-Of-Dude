invHover = -1;
slotHover = -1;
invDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function()
{
	//clear
	slotHover = -1;
	invHover = -1;
	
	//mouse pos
	var mx = mouse_x;
	var my = mouse_y;
	//check for hover
	with (obj_inv)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			4-2,
			4-2,
			(4+inv_row_length*14)+3,
			(4+(((inv_slots-1) div inv_row_length)+1)*11)+3
		))
		{
			//check mouse slot
			for (var i = 0; i < inv_slots; i += 1)
			{
				var xx = 4 + (i mod inv_row_length) * 14 + 2;
				var yy = 4 + (i div inv_row_length) * 11 + 2;
				if (point_in_rectangle(mx, my, xx, yy, xx+13, yy+10))
				{
					other.slotHover = i;
					other.invHover = id;
				}
			}
		}
	}
}
stateFree = function()
{
	mouseOver();
	//drag item if slot not empty
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (invHover.inv[slotHover] != -1)
	{
		//drag
		state = stateDrag;
		itemDrag = invHover.inv[slotHover];
		invDrag = invHover;
		slotDrag = slotHover;
	}
}

stateDrag = function()
{
	mouseOver();
	if (!mouse_check_button(mb_left))
	{
		//swap
		if (slotHover != -1) invSwap(invDrag,slotHover,invHover,slotHover)
		
		//clear
		state = stateFree;
		itemDrag = -1;
		invDrag = -1;
		slotDrag = -1
	}
}

state = stateFree;
