_countdown += 1;
var _enemy_1 = irandom_range(50, 100);
switch(_countdown){
	case 50:
		instance_create_layer(x, y, "Instances", objEnemy); 
		_countdown = 0;
	break;	
}
