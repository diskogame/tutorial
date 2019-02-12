with (other) {
	hp--;
	sprite_index = sEnemy;
	image_index = 1;
	hitfrom = other.direction; //other aqui es oBullet
}
instance_destroy();