

function scr_jump_check() {
	if (jumping) {
	
		if (vspd > 0) {
			jumping = false;
			falling = true;
		}
	
	}
}