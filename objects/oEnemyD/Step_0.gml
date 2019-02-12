if (done == 0) {
	vsp = vsp + grv; //vsp puede tener el salto anterior

	if(place_meeting(x + hsp, y, oSuelo)) {
		while(!place_meeting(x + sign(hsp), y, oSuelo)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;

	if(place_meeting(x, y + vsp, oSuelo)) {
		
		if (vsp > 0) {
			done = 1;
			image_index = 1;
		}
		
		while(!place_meeting(x, y + sign(vsp), oSuelo)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
}