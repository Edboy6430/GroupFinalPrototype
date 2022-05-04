draw_set_halign(fa_center)
draw_set_valign (fa_center)

draw_set_font(Palatino_Linotype)

draw_set_alpha(0.5)
draw_set_color(c_black)
draw_text_ext((x + 3), (y + 3), text, separation, max_width)

draw_set_alpha(1)
draw_set_color(c_white)
draw_text_ext(x, y, text, separation, max_width)
