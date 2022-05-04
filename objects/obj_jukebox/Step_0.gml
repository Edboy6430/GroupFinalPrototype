if place_meeting(x, (y + 50), obj_character) {
	
	if textbox == noone {
		
		textbox = instance_create_depth(text_x, text_y, -100, obj_textbox)
		
		textbox.text = "None of my songs are in the jukebox. Weird."
		
	}
	
	if interaction_textbox == noone {
		
		interaction_textbox = instance_create_depth(x, y, -100, obj_interaction_textbox)
	}
	
	if keyboard_check_pressed(ord("E")) {
		
		if !audio_is_paused(obj_audio_manager.jukebox_song) {
			
			audio_pause_sound(obj_audio_manager.jukebox_song)
		} else {
			
			if audio_is_paused(obj_audio_manager.jukebox_song) {
				
				audio_resume_sound(obj_audio_manager.jukebox_song)
			}
		}
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
