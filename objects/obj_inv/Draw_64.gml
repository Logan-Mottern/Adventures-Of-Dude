draw_sprite_stretched
(
	spr_inv,
	0,
	4-2,
	4-2,
	(4+inv_row_length*14)+3,
	(4+(((inv_slots-1) div inv_row_length)+1)*11)+3
);

for (var i = 0; i < inv_slots; i += 1)
{
	var xx = 4 + (i mod inv_row_length) * 14 + 2;
	var yy = 4 + (i div inv_row_length) * 11 + 2;
	var hover = (obj_mouse.invHover == id) && (obj_mouse.slotHover == i)
	draw_sprite(spr_inv_slot,hover,xx,yy)
	if (inv[i] != -1)
	{
		var alpha = 1.0
		if (obj_mouse.invDrag == id) && (obj_mouse.slotDrag == i) alpha = 0.5;
		draw_sprite(spr_inv_item,inv[i],xx,yy);
		draw_set_alpha(alpha);
		draw_sprite(spr_inv_item,inv[i],xx,yy);
		draw_set_alpha(1.0)
	}
}

