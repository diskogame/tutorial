image_angle = direction;

/* Bouncing */
if y < 0 or y > room_height{
	vspeed = vspeed * - 1;
}


if x < 0 or x > room_width{ 
	hspeed = hspeed * - 1;
}

/* Damage */

hitBullet = instance_place(x,y,sProyectile);

if instance_exists(hitBullet) {
	with hitBullet {
		instance_destroy();	
	}
	
	image_xscale = image_xscale - 0.2;
	image_yscale = image_xscale;
	
	vida -= 20;
	//show_message(string(vida) + ":" + string(image_xscale));
	if image_xscale <= 0 {
		instance_create_depth(random(room_width), random(room_height), oEnemy.depth, oEnemy);
		instance_create_depth(random(room_width), random(room_height), oEnemy.depth, oEnemy);
		instance_destroy();
	}
	
}

