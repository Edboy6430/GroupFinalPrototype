if place_meeting(x, (y + 30), obj_character) {
	
	if textbox == noone {
		
		textbox = instance_create_depth(text_x, text_y, -100, obj_textbox)
		textbox.text = "Here should be a poster of me. "
		+ "It's missing. No one seems to notice that but me though."
	}
} else {

	if textbox != noone {
		
		instance_destroy(textbox)
		
		textbox = noone
	}
}
