if player_xp >= 100 {
    player_level += 1;
    player_xp = 0;
    if (player_lives < 5) {
        player_lives ++;
    }
}

if player_lives == 0 {
    game_restart();
}

