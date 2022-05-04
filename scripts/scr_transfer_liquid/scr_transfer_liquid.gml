function scr_transfer_liquid(first_choice, second_choice) {
	
	// Checks if the second choice already has the maximum amount of liquid
	if ds_list_size(second_choice.liquid_list) < max_amount_liquid {
		
		// Deletes the liquid object at the top of the list and stores it
		last_position = ds_list_size(first_choice.liquid_list) - 1
		deleted_liquid = ds_list_find_value(first_choice.liquid_list, last_position)
		
		ds_list_delete(first_choice.liquid_list, last_position)
		
		deleted_color = deleted_liquid.liquid_color
		deleted_liquid.is_filled = false
		
		
		
		// Destroys the deleted liquid object after storing its information
		instance_destroy(deleted_liquid)
		
		
		
		deleted_liquid_y = (second_choice.y - 5) -
		(ds_list_size(second_choice.liquid_list) * 20)
		
		
		
		// Creates a new liquid object
		new_liquid = instance_create_depth(second_choice.x, deleted_liquid_y,
		1, obj_liquid)
		new_liquid.image_yscale = 0
		
		ds_list_add(second_choice.liquid_list, new_liquid)
		
		new_liquid.liquid_color = deleted_color
		new_liquid.is_filled = true
		
		
		
		liquid_pouring = audio_play_sound(snd_liquid_pouring, 1, false)
		audio_sound_pitch(liquid_pouring, 0.70)
	}
}
