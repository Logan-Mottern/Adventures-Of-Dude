//Have the camera follow the player
//Put the player in the center of the screen

var cam_x = obj_dude_1.x - camera_get_view_width(view_camera[0]) / 2;
var cam_y = obj_dude_1.y - camera_get_view_height(view_camera[0]) / 2;

if (shake)
{
	shake_time -= 1;
	cam_x += choose(-shake_magnitude, shake_magnitude);
	cam_y += choose(-shake_magnitude, shake_magnitude);
	
	if (shake_time <= 0)
	{
		shake_magnitude -= shake_fade;
		
		if (shake_time <= 0)
		{
			var cam_x = obj_dude_1.x - camera_get_view_width(view_camera[0]) / 2;
			var cam_y = obj_dude_1.y - camera_get_view_height(view_camera[0]) / 2;
			shake = false
		}
	}
}
	
camera_set_view_pos(view_camera[0], cam_x, cam_y);
