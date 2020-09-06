spawn_counter -= 1; 
enemy2change = irandom(4);
if spawn_counter == 0 {
    if (enemy2change == 1  && obj_score.player_level > 1){
        var monster2 = instance_create(x, y, obj_thanos);
        if image_xscale == 1{
            with (monster2) {
                image_xscale = 1;
            }
        } else {
            with (monster2) {
                image_xscale = -1;
            } 
        }
    } else {
        var monster = instance_create(x, y, obj_monster);
        if image_xscale == 1{
            with (monster) {
                image_xscale = 1;
            }
        } else {
            with (monster) {
                image_xscale = -1;
            } 
        }
    }
    spawn_counter = choose(60, 90, 120, 150);  
}

