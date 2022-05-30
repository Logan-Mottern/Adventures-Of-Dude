//Settings
draw_set_font(fnt_pixel);
var _mainTextY = 5;
var _mainW = 52;
var _secondW = 52;

//Draw the Menu
var _mainI = 1;
if instance_exists(obj_weapon) _mainI += 2;
draw_sprite_stretched
	(
	spr_menu,
	0,
	1, //X
	1, //Y
	_mainW, //Width
	5*_mainI + 7 //Height
	);

//Draw Health
	draw_text(5,_mainTextY,"Health: " + string(obj_dude_1.dudehp));
	_mainTextY += 5;

//Draw Ammo
	if instance_exists(obj_weapon)
	{
		draw_text(5,_mainTextY,"Ammo  : " + string(obj_weapon.ammo));
		_mainTextY += 5;
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
		draw_text(5,_mainTextY,"Reload: " + _reloadVal);
		_mainTextY += 5;
	}
	
//Draw the second menu
var _secondI = 4
if keyboard_check(vk_tab)
{
	draw_sprite_stretched
		(
		spr_menu,
		0,
		_mainW+2, //X
		1, //Y
		_secondW, //Width
		5*_secondI + 7 //Height
		);
}
//List of ammo types and associated type Values
	/*
	

