switch (monster_state) {

    case "move":
        if sprite_index != spr_thanoswalk{
            sprite_index = spr_thanoswalk
            image_speed = 0.5;   
        } //Movement towards player
        if image_xscale = 1{
            if (x <= obj_player.x - 128)
            {
                 x += 4
            }
            else monster_state = "attack";
        }
        
        if image_xscale = -1{
            if (x >= obj_player.x + 128)
            {
                 x -= 4
            }
            else monster_state = "attack";
        }
        hitAgain = true;
       
    break;     
    
    case "attack":
        if sprite_index != spr_thanosattack{
            sprite_index = spr_thanosattack;
            image_speed = 0.5;   
        }
        
        if hitAgain == true {
            instance_create(x - 128, y -64, obj_attack);
            //attack_timer = 60;
            hitAgain = false;
        }
        
        if attack_timer == 0 {
            instance_create(x - 128, y -64, obj_attack);
            //attack_timer = 60;
            monster_state = "run"
        }   
        
        if (attack_timer > 0) attack_timer --;
       
    break;
    
    case "run":
        if sprite_index != spr_thanosrun{
            sprite_index = spr_thanosrun;
            image_speed = 0.5;   
        }
 
        if image_xscale =  -1{ 
            x += -8              
        }
        if image_xscale = 1{
            x -= 8 
        }
    break; 
} 

