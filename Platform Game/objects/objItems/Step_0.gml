var _item = ds_list_find_value(_displayed_items, _selected); 
// Busca o item selecionado na lista de itens exibidos (_displayed_items) e o armazena na variável _item.

if(global.buying_limit <= 0){ 
	global.buying_limit = 0;  
}
// Garante que o limite de compra (buying_limit) nunca seja menor que 0.

if(_selected != -1 && global.upgrade == true){ 
// Verifica se há um item selecionado (_selected != -1) e se a flag global.upgrade está verdadeira (indicando que uma compra ou atualização está em andamento).

	if(global.coin >= global.items[_selected][ATRIBUTES.VALUE] && global.buying_limit > 0){ 
	// Verifica se o jogador tem moedas suficientes (global.coin) para comprar o item e se ainda há limite de compra disponível (global.buying_limit > 0).

		global.buying_limit -= 1; 
		// Diminui o limite de compras em 1.

		switch(_item){ 
		// Com base no item selecionado, aplica os efeitos correspondentes ao personagem (objController).

	
			case 0: 
			// Se o item for o de índice 0, aumenta os atributos do personagem de acordo com os valores do item.
				objController._str += global.items[_item][ATRIBUTES.FORCA]; 
				// Aumenta a força do personagem com base no atributo de força do item.
				objController._agi += global.items[_item][ATRIBUTES.VELOCIDADE]; 
				// Aumenta a agilidade (velocidade).
				objController._luk += global.items[_item][ATRIBUTES.SORTE]; 
				// Aumenta a sorte.
				objController._item_level += global.items[_item][ATRIBUTES.LEVEL]; 
				// Aumenta o nível do item.
				objController._max_health += global.items[_item][ATRIBUTES.VIDA]; 
				// Aumenta a vida máxima.
				objController._energy += global.items[_item][ATRIBUTES.ENERGIA]; 
				// Aumenta a energia do personagem.
			break;
			
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
// Reseta a flag global.upgrade para false, indicando que o processo de upgrade/compra foi finalizado.

