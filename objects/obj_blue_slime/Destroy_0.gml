screenshake(20, 3, 0.3);
obj_dev.fragmentType = 0;
repeat(choose(5,8)) instance_create_layer(x,y,layer,obj_decal_fragment);
ammo_drop(x,y,1,.1,0);

