_countdown += 1;
var _enemy_1 = irandom_range(50, 100);
var _enemy = choose(objEnemy_1);
switch(_countdown){
	case 200:
		instance_create_layer(x, y, "Collision", _enemy); 
		_countdown = 0;
	break;	
}
