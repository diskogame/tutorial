
if(hascontrol) { //Quitamos el control al pasar de room
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

/*Movement and Collisions*/
var move = key_right - key_left; //var --> variable temporal que solo dura un frame

hsp = move * walksp;
/*Va aumentando/reduciendo(saltos) progresivamente en cada frame */
vsp = vsp + grv; //vsp puede tener el salto anterior

if(place_meeting(x, y + 1, oSuelo)) && (key_jump) {
	vsp = - 15;	
}

if(place_meeting(x + hsp, y, oSuelo)) {
	while(!place_meeting(x + sign(hsp), y, oSuelo)) {
		x = x + sign(hsp);
	}
	hsp = 0;
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
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
		
} else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;
	} else  {
		sprite_index = sPlayerR;
	}
	
}	

/* Facing */
if (hsp != 0) image_xscale = sign(hsp);