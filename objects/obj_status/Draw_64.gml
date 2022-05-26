//Settings
draw_set_font(fnt_pixel);
var _textY = 5;

//Draw the Menu
var _menuI = 1
if instance_exists(obj_weapon) _menuI += 2
draw_sprite_stretched
	(
	spr_menu,
	0,
	1, //X
	1, //Y
	52, //Width
	5*_menuI + 7 //Height
	);

//Draw Health
	draw_text(5,_textY,"Health: " + string(obj_dude_1.dudehp));
	_textY += 5;

//Draw Ammo
	if instance_exists(obj_weapon)
	{
		draw_text(5,_textY,"Ammo  : " + string(obj_weapon.ammo));
		_textY += 5;
	}
//Draw Reload

	if instance_exists(obj_weapon)
	{
		if (string_length(string((obj_weapon.WFreload - obj_weapon.reload) / 45)) > 3)
		{
			var _reloadVal = string_copy(string((obj_weapon.WFreload - obj_weapon.reload) / 45), 1, 3);
		}
		else
		{
			var _reloadVal = string((obj_weapon.WFreload - obj_weapon.reload) / 45);
		}
		draw_text(5,_textY,"Reload: " + _reloadVal);
		_textY += 5;
	}

