// No evento Create do objeto controlador

instance_create_layer(0, 0, "Instances", objHud);

instance_create_layer(0, 0, "Instances", objStatus);

instance_create_layer(0, 0, "Instances", objItems);

instance_create_layer(0, 0, "Instances", objEnemySpawner);

instance_create_layer(0, 0, "Instances", objWorldGenerate);


global.coin = 100;

_rocket_fuel = 1000;

window_set_fullscreen(1);