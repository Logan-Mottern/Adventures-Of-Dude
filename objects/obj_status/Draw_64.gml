draw_sprite_stretched(spr_menu,0,1,1,59,20+2);
draw_set_font(fnt_pixel);
var _hp = "Health: ";
//var _capa = "Capacity: ";
var _ammo = "Ammo  : ";
var _reload ="Reload: ";
var _menuh = 5;

//Draw Health
	draw_text(5,_menuh,_hp + string(obj_dude_1.dudehp));
	_menuh += 5;

//Draw Ammo
	if object_exists(obj_weapon)
	{
		draw_text(5,_menuh,_ammo + string(obj_weapon.ammo));
		_menuh += 5;
	}
//Draw Reload
	if object_exists(obj_weapon)
	{
		draw_text(5,_menuh,_reload + string((obj_weapon.WFreload - obj_weapon.reload) / 45));
		_menuh += 5;
	}
//Draw Capacity (Future Proofing)
/*
if object_exists(obj_weapon) 
{
	draw_text(4,25,_ammo + string(obj_weapon.total));
}
*/

//Draw the menu
	var _healthW = string_length(obj_dude_1.dudehp);
	var _ammoW = string_length(obj_weapon.ammo);
	//var _capaW = string_length

	//var _menuw = 4*10; 
	
