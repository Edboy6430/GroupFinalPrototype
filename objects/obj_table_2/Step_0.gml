if collision_circle(x, y, 140, obj_character, true, false) {
	
	if textbox == noone {
		
		textbox = instance_create_depth(text_x, text_y, -100, obj_textbox)
		
		textbox.text = "These people are ignoring me. They should recognize me."
		+ "\n"
		+ "\"What? No, I don't need your money! You kidding me?\""
	}
} else {

	if textbox != noone {
		
		instance_destroy(textbox)
		textbox = noone
	}
}
