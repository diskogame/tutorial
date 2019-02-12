vsp = vsp + grv; //vsp puede tener el salto anterior

if(place_meeting(x + hsp, y, oSuelo)) {
	while(!place_meeting(x + sign(hsp), y, oSuelo)) {
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x = x + hsp;

if(place_meeting(x, y + vsp, oSuelo)){
	while(!place_meeting(x, y + sign(vsp), oSuelo)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;


/*Animation*/

if (!place_meeting(x, y + 1, oSuelo)) {
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
		
} else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sEnemy;
		image_index = 0; //new
	} else  {
		sprite_index = sEnemyR;
	}
	
}	

/* Facing */
if (hsp != 0) image_xscale = sign(hsp);