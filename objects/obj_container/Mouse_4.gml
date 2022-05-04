if (first_container == noone) && (second_container == noone) {
	first_container = instance_nearest(mouse_x, mouse_y, obj_container)
	
	// first_glowing_glass = instance_create_depth(first_container.x,
	// first_container.y, -1, obj_glass_glow)
}
else {
	if (first_container != noone) && (second_container == noone) {
		second_container = instance_nearest(mouse_x, mouse_y, obj_container)
		
		// second_glowing_glass = instance_create_depth(second_container.x,
		// second_container.y, -1, obj_glass_glow)
		
		scr_liquid_transfer(first_container, second_container)
		
		// instance_destroy(first_glowing_glass)
		// instance_destroy(second_glowing_glass)
		
		first_container = noone
		second_container = noone
	}
}
