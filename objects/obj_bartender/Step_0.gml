if place_meeting((x + 200), y, obj_character) {
	
	if textbox == noone {
		
		textbox = instance_create_depth(text_x, text_y, -100, obj_textbox)
		
		textbox.text = "Hey bartender, can I get a, uh..."
		
	}
	
		if interaction_textbox == noone {
		
		interaction_textbox = instance_create_depth(x, y, -100, obj_interaction_textbox)
	}
	
	
	if keyboard_check_pressed(ord("E")) {
		
		next_room = room_next(room)
		
		fade = true
	}
} else {

	if textbox != noone {
		
		instance_destroy(textbox)
		
		textbox = noone
		
	}
	
		if interaction_textbox != noone {
		
		instance_destroy(interaction_textbox)
		
		interaction_textbox = noone
	}
}
