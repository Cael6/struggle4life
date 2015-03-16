randomize();
switch (enemy_type) {
    case ENEMY_TYPE_INFECTED_CRAWLER:
        spawn_crawlers();
        break;
    case ENEMY_TYPE_INFECTED_SPITTER:
        spawn_spitters();
        break;
    case ENEMY_TYPE_INFECTED_BRUISER:
        spawn_bruisers();
        break;
    case ENEMY_TYPE_INFECTED_CRAWLER_SPITTER:
        var is_crawler = irandom(1);
        if (is_crawler) {
            spawn_crawlers();
        } else {
            spawn_spitters();
        }
        break;
    case ENEMY_TYPE_INFECTED_CRAWLER_BRUISER:
        var is_crawler = irandom(1);
        if (is_crawler) {
            spawn_crawlers();
        } else {
            spawn_bruisers();
        }
        break;
    case ENEMY_TYPE_INFECTED_SPITTER_BRUISER:
        var is_spitter = irandom(1);
        if (is_spitter) {
            spawn_spitters();
        } else {
            spawn_bruisers();
        }
        break;
    case ENEMY_TYPE_INFECTED_ALL:
        var type = irandom(2);
        switch (type) {
            case 0:
                spawn_crawlers();
                break;
            case 1:
                spawn_spitters();
                break;
            case 2:
                spawn_bruisers();
                break;
        }
        break;
    default:
        c_log("Spawner Tried to spawn a non-existent type", C_LOG__ERROR);
        break;
    
}