draw_set_font(Palatino_Linotype_18)
draw_set_color(c_white)
draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_valign (fa_center)



if room == rm_level_2 {
	
	draw_text_ext((room_width / 2), 150,
	"You get the drink. Some dark, cloudy liquid. "
	+ "You're pretty sure they're made up of three different kinds of alcohol. "
	+ "Not sure why, but you decide to separate them. "
	+ "Just like sorting out your messy and irredeemable brain.",
	separation, max_width)
}

if room == rm_level_3 {
	
	draw_set_font(Palatino_Linotype_14)
	
	draw_text_ext((room_width / 2), (room_height - 80),
	"After that drink, you need to use the restroom. "
	+ "\n"
	+ "A mirror with fog. "
	+ "\n"
	+ "What do I look like? "
	+ "\n"
	+ "I need to wipe away the mirror fog to see myself. ",
	(separation - 10), max_width)
}
