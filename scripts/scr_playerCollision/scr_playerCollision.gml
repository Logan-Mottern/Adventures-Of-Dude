function collision()
{
var _collision = false;

//Horizontal Tiles

if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
{
	x -= x mod colSize;
	if (sign(hSpeed) == 1) x += colSize - 1;
	hSpeed = 0;
	_collision = true;
}

//Horizontal Move Commit

x += hSpeed;

//Vertical Tiles

if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
{
	y -= y mod colSize;
	if (sign(vSpeed) == 1) y += colSize - 1;
	vSpeed = 0;
	_collision = true;
}

//Vertical Move Commit

y += vSpeed;

return _collision;
}
