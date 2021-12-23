
function scr_set_sprite() {
	if (jumping) {
		sprite_index = spr_player_jump;
	} else if (falling) {
		sprite_index = spr_player_fall;
	} else if (sliding) {
		sprite_index = spr_player_slide;
	} else {
		sprite_index = spr_player_run;
	}
}