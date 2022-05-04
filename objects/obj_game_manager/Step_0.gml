// Lets the player move between rooms
if keyboard_check_pressed(vk_backspace) {
	
	next_room = room_previous(room)
	
	fade = true
	
}

if keyboard_check_pressed(vk_enter) {
	
	next_room = room_next(room)
	
	fade = true
	
}



// Checks if the glasses in Level 2 are solved
if room == rm_level_2 {
	if mouse_check_button_pressed(mb_left) {
		
		alarm[0] = 1
	}
}
