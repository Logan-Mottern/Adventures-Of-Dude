speed = obj_weapon.WFspeed;
direction = point_direction(obj_weapon.x,obj_weapon.y,mouse_x,mouse_y)
direction = direction + random_range(-obj_weapon.WFspread, obj_weapon.WFspread);
image_xscale = 0;
image_angle = direction;

