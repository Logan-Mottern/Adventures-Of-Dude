//Settings
draw_set_font(fnt_pixel);
var _mainTextY = 5;
var _secondTextY = 5;
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
var _secondI = 23
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
//Ammo

//Standerd
	draw_text(_mainW+6,_secondTextY,"STANDERD ");
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Normal : " + string(ammo_St_N));
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Flame  : " + string(ammo_St_F));
	_secondTextY += 10;
//Shotgun
	draw_text(_mainW+6,_secondTextY,"SHOTGUN ");
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Normal : " + string(ammo_Sh_N));
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Flame  : " + string(ammo_Sh_F));
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Slug   : " + string(ammo_Sh_S));
	_secondTextY += 10;
//Energy
	draw_text(_mainW+6,_secondTextY,"ENERGY ");
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Normal : " + string(ammo_En_N));
	_secondTextY += 10;
//Elemental
	draw_text(_mainW+6,_secondTextY,"ELEMENTAL ");
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Normal : " + string(ammo_El_N));
	_secondTextY += 10;
//Light Explosive
	draw_text(_mainW+6,_secondTextY,"LIGHT EXPLO ");
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Normal : " + string(ammo_Le_N));
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Frag   : " + string(ammo_Le_Fr));
	_secondTextY += 10;
//Heavy Explosive
	draw_text(_mainW+6,_secondTextY,"HEAVY EXPLO ");
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Normal : " + string(ammo_He_N));
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Frag   : " + string(ammo_He_Fr));
	_secondTextY += 5;
	draw_text(_mainW+6,_secondTextY," Flame  : " + string(ammo_He_F));
	_secondTextY += 5;	
}

	

