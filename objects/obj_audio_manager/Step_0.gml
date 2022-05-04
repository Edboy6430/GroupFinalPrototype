if room != rm_level_1 {
	
	audio_sound_gain(jukebox_song, 0.15, 500)
	audio_sound_gain(bar_ambience, 0.10, 500)	
} else {
	
	audio_sound_gain(jukebox_song, 0.50, 500)
	audio_sound_gain(bar_ambience, 0.25, 500)
	
	audio_sound_pitch(jukebox_song, 1)
}

// Plays if the room is level 3
if room == rm_level_3 {
	
	audio_sound_gain(liquid_dripping, 0.75, 100)
} else {
	
	audio_sound_gain(liquid_dripping, 0, 100)
}



// Slows down the pitch of the song
if keyboard_check(vk_alt) {

	while pitch_value > 0.80 {
		
		pitch_value -= 0.01
	}
} else {
	
	while pitch_value < 1.00 {
		
		pitch_value += 0.01
	}
}

audio_sound_pitch(jukebox_song, pitch_value)
