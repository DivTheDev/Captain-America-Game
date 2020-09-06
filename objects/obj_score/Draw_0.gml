draw_set_font(fnt_score);
draw_set_color(c_white);
draw_text(x, y,     string_hash_to_newline("Score:  "      + string(player_score)));
draw_text(x, y + 20,string_hash_to_newline("Level:  "      + string(player_level)));
draw_text(x, y + 45,string_hash_to_newline("Lives:  "      + string(player_lives))); 

draw_healthbar(obj_player.x - 60, obj_player.x - 200, obj_player.x =60, obj_player.x - 180,(player_lives * 20), c_black, c_red, c_green, 1, true, true);
draw_healthbar(obj_player.x - 60, obj_player.x - 225, obj_player.x =60, obj_player.x - 205,(player_xp), c_black, c_red, c_yellow, 1, true, true); 



