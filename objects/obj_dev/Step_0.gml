if instance_exists(obj_blue_slime) or instance_exists(obj_magicTower)
{
	gameTime += 1/45;
}
if instance_exists(obj_blue_slime) or instance_exists(obj_magicTower)
{
	gameSec += 1/45;
}
if gameSec = 60
{
	gameSec = 0;
	gameMin += 1;
}
