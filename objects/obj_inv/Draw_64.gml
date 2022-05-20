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
	draw_sprite(spr_inv_slot,0,xx,yy)
	if (inv[i] != -1)
	{
		draw_sprite(spr_inv_item,inv[i],xx,yy);
	}
}

