obj_score.player_score += 20;
obj_score.player_xp += 10;
with other{
    instance_destroy();
} 

//code to decrease health every frame the enemy is impacted by the attack
Thealth -= decrease;
//if the enemy's health is below 1. destroy it, making this a two hit kill monster
if Thealth < 1{
   instance_destroy();
}

