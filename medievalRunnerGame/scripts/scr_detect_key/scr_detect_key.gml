
function scr_detect_key() {
	jumpKey = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up);
	slideKey = keyboard_check(vk_down);
}