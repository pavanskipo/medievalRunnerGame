
function scr_collision_check() {
	show_debug_message("top block " + string(y) + " " + string(vspd));
	if (place_meeting(x, y + vspd , obj_block)) {
		show_debug_message("inside block " + string(y) + " " + string(vspd) + " " + string(sign(vspd)));

		while (!place_meeting(x, y + sign(vspd), obj_block)) {
			show_debug_message("inside while block " + string(y) + " " + string(vspd));
			y += sign(vspd);
		}
	
		vspd = 0;
	}
	
	y += vspd;
}