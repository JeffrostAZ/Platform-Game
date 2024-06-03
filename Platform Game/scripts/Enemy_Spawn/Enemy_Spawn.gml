// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Spawn(_pos_x, _pos_y){
	var _enemy = instance_create_layer(_pos_x, _pos_y, "Instances", objEnemy);  // Cria o inimigo na borda da room
}