
function scr_ground_check() {
	// show_debug_message("inside ground check" + string(jumpKey) + string(slideKey));
	// show_debug_message(place_meeting(x, y+5, obj_block));
	
	if (place_meeting(x, y+4, obj_block)) {
		// We're on ground
		vspd = 0;
		jumping = false;
		falling = false;
		sliding = false;
	
		if (slideKey) {
			sliding = true;
		}
	
		if (jumpKey and !slideKey) {
			jumping = true;
			vspd += -jspd;
		}
	
	} else {
		// We're mid Air
		if (vspd < termVelocity) {
		
			if (slideKey) {
				vspd += grav * 4;
			} else {
				vspd += grav;
			}
		
		}
	}
}