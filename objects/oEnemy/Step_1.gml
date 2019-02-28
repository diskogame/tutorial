if (hp <= 0) {
	with(instance_create_layer(x, y, layer, oEnemyD)) {
		direction = other.hitfrom;	
		hsp = lengthdir_x(10, direction);
		vsp = lengthdir_y(10, direction);
		if(sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	instance_destroy();
}
