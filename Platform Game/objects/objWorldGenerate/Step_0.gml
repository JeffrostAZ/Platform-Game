if(global.exp >= _exp_level_needs){
	global.level++;	
	_exp_level_needs += global.exp * global.level;
	_item_menu = 1;
}
