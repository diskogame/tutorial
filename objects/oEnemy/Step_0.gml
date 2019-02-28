vsp = vsp + grv; //vsp puede tener el salto anterior

goToPlayerX = 1;
if(abs(oPlayer.x - x) < 300) && (abs(oPlayer.y - y) < 300)  { //Distancia entre player y enemigo para moverse hacia el player
	goToPlayerX = sign(oPlayer.x - x);
}
enemyDirection = hsp * goToPlayerX;

if(place_meeting(x + enemyDirection, y, oSuelo)) {
	while(!place_meeting(x + sign(enemyDirection), y, oSuelo)) {
		x = x + sign(enemyDirection);
	}
	enemyDirection = -enemyDirection;
	hsp = -hsp;
	//goToPlayerX = 1; 
}

x = x + enemyDirection; //aki Ajustarlo

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
	if (enemyDirection == 0) {
		sprite_index = sEnemy;
		image_index = 0; //new
	} else  {
		sprite_index = sEnemyR;
	}
	
}	

/* Facing */
if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;