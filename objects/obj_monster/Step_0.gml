switch (monster_state) {

    case "move":
        if sprite_index != spr_monster {
            sprite_index = spr_monster;
            image_speed = 2;   
        } //Movement towards player
        if image_xscale = 1{
            if (x <= obj_player.x - 128)
            {
                 x += 9
            }
            else monster_state = "attack";
        }
        
        if image_xscale = -1{
            if (x >= obj_player.x + 128)
            {
                 x -= 9
            }
            else monster_state = "attack";
        }
       
    break;     
    
    case "attack":
        if sprite_index != spr_monsterattack{
            sprite_index = spr_monsterattack;
            image_speed = 0.5;   
        }
        
        if image_xscale = -1{
            if attack_timer == 0 {
                instance_create(x - 128, y -64, obj_attack);
                //attack_timer = 60;
                monster_state = "run"
            }    
        }
        if image_xscale = 1{
            if attack_timer == 0 {
                instance_create(x + 128, y -64, obj_attack);
                //attack_timer = 60;
                monster_state = "run"
            }   
        }
        if (attack_timer > 0) attack_timer --;
       
    break;
    
    case "run":
        if sprite_index != spr_monsterrun{
            sprite_index = spr_monsterrun;
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

