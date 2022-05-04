draw_set_font(Palatino_Linotype_18)
draw_set_color(c_white)
draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_valign (fa_center)



if room == rm_level_3 {
	
	draw_text_ext((room_width / 2), 30, "press ALT for help", separation, max_width)
}

if keyboard_check(vk_alt) {
	
	draw_text_ext((room_width / 2), (room_height / 3),
	"Beside each row and column of the grid are listed the lengths of"
	+ " the runs of colored squares on that row or column."
	+ " Your aim is to find all colored squares to remove the fog and"
	+ " see yourself in the mirror.",
	separation, max_width)
}