/// @description code
    
    switch (player_state) {
        case "idle":
            if sprite_index != sPlayerIdle {
                sprite_index = sPlayerIdle;
                image_speed = 0.5;   
            }
            if attack_timer > 0 attack_timer -= 1;   
            if (mouse_check_button_pressed(mb_right) || mouse_check_button_pressed(mb_left)){
                    image_xscale =  0.5;
                    if attack_timer == 0 {
                        player_state = "attack" 
                    }
                }
            else if (keyboard_check_pressed(vk_space) && obj_score.player_level > 1){
                    if attack_timer == 0 {
                        player_state = "superAttack" 
                    }
                }
                
        break;
        
        
        
        case "superAttack":
     
            if sprite_index != sPlayerAttack2 {
                sprite_index = sPlayerAttack2;
                image_speed = 0.5;
                image_index = 0;   
                attack_timer = 30;
                obj_attacktimer.image_index = 0;
             }
            
            if image_index >= 8 {
                player_state = "idle"
            }
            
        break;
        
        
        case "attack":
             if sprite_index != sPlayerAttack {
                sprite_index = sPlayerAttack;
                image_speed = 0.5;
                image_index = 0;   
                attack_timer = 30;
                obj_attacktimer.image_index = 0;
             }
             if image_index == 4 {
                player_state = "damage"
            }        
        break;
        
        case "damage":
        
        instance_create(obj_player.x + 160, obj_player.y - 50, obj_attack);
            
            if image_index == 5 {
                player_state = "idle"
            }   
        break;
    
    }

