if liquid_color == "blue" {
	
	sprite_index = spr_blue
}
if liquid_color == "red" {
	
	sprite_index = spr_red
}
if liquid_color == "green" {
	
	sprite_index = spr_green
}
if liquid_color == "purple" {
	
	sprite_index = spr_purple
}



// "Drains" the liquid if liquid is filled
if !is_filled {
	
	if image_yscale > 0 {
		
		image_yscale -= scale_increment
	}
}
if is_filled {
	
	if image_yscale < 1 {
		
		image_yscale += scale_increment
	}
}
