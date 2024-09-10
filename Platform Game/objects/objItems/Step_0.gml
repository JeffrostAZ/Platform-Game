var _item = ds_list_find_value(_displayed_items, _selected);

if(global.buying_limit <= 0){
	global.buying_limit = 0;
}

if(_selected != -1 && global.upgrade == true){
	if(global.coin >= global.items[_selected][ATRIBUTES.VALUE] && global.buying_limit > 0){
		global.buying_limit -= 1;
		switch(_item){
	
			case 0:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
			
		break;
	
			case 1:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];	
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 2:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];		
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 3:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];	
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 4:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];		
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];	
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 5:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];		
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];	
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 6:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];	
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 7:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];		
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 8:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];		
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 9:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 10:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 11:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 12:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL];		
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 13:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];	
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];

		break;
	
			case 14:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 15:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 16:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 17:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 18:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 19:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 20:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 21:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 22:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
			case 23:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 24:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 25:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 26:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 27:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 28:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 29:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
				case 30:
				objController._str += global.items[_item][ATRIBUTES.FORCA];
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE];
				objController._luk += global.items[_item][ATRIBUTES.SORTE];			
				objController._max_health += global.items[_item][ATRIBUTES.VIDA];
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA];
				objController._shoot_frequency += global.items[_item][ATRIBUTES.VELOCIDADE];


		break;
	
		}
	}
}

global.upgrade = false;
	

