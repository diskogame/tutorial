with (instance_create_layer(x, y, "Bullets", oBullet)) {
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;	
		image_xscale = other.charge;
		image_yscale = other.charge;
}
charge = 0;
ScreenShake(22, 22);