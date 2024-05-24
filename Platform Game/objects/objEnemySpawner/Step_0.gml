_countdown -= 1;

if(room == rm_world) && _countdown <= 0{

	// No evento Alarm[0] de objEnemySpawner
	var _side = choose(-1, 1);  // Escolhe de qual lado o inimigo aparecerá (-1 para esquerda, 1 para direita)
	var _x_position = (_side == 1) ? 0 : room_width;  // Posição X baseada no lado escolhido
	var _enemy = instance_create_layer(_x_position + (_side * 200), room_height / 2, "Instances", objEnemy);  // Cria o inimigo na borda da room
	
	_countdown = 100 - (global.level * 2);
}
