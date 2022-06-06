audio_play_sound(aud_weapon_click,0,0);

if image_index = 0 obj_menu_main.inv.ammo.St.norm += 1;
if image_index = 1 obj_menu_main.inv.ammo.St.norm += 3;
if image_index = 2 obj_menu_main.inv.ammo.St.flame += 1;
if image_index = 3 obj_menu_main.inv.ammo.St.flame += 3;
if image_index = 4 obj_menu_main.inv.ammo.Sh.norm += 1;
if image_index = 5 obj_menu_main.inv.ammo.Sh.norm += 3;
if image_index = 6 obj_menu_main.inv.ammo.Sh.flame += 1;
if image_index = 7 obj_menu_main.inv.ammo.Sh.flame += 3;
if image_index = 8 obj_menu_main.inv.ammo.Sh.slug += 1;
if image_index = 9 obj_menu_main.inv.ammo.Sh.slug += 3;
if image_index = 10 obj_menu_main.inv.ammo.En.norm += 1;
if image_index = 11 obj_menu_main.inv.ammo.En.norm += 3;
if image_index = 12 obj_menu_main.inv.ammo.El.norm += 1;
if image_index = 13 obj_menu_main.inv.ammo.El.norm += 3;
if image_index = 14 obj_menu_main.inv.ammo.Le.norm += 1;
if image_index = 15 obj_menu_main.inv.ammo.Le.norm += 3;
if image_index = 16 obj_menu_main.inv.ammo.Le.frag += 1;
if image_index = 17 obj_menu_main.inv.ammo.Le.frag += 3;
if image_index = 18 obj_menu_main.inv.ammo.He.norm += 1;
if image_index = 19 obj_menu_main.inv.ammo.He.norm += 3;
if image_index = 20 obj_menu_main.inv.ammo.He.frag += 1;
if image_index = 21 obj_menu_main.inv.ammo.He.frag += 3;
if image_index = 22 obj_menu_main.inv.ammo.He.flame += 1;
if image_index = 23 obj_menu_main.inv.ammo.He.flame += 3;

instance_destroy();
