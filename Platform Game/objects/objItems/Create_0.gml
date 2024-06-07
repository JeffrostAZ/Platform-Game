randomize();

enum ITEMS {
    CAPACETE,
    OCULOS,
    MOCHILA,
    CINTO,
    MEIA,
    RELOGIO,
    ANEL,
    COLAR,
    BRACELETE,
    CHAPEU,
    CASACO,
    CALCAS,
    SHORTS,
    SAPATO,
    SANDALIA,
    TENIS,
    GRAVATA,
    CACHECOL,
    LUVAS_DE_INVERNO,
    VESTIDO,
    SAIA,
    BLUSA,
    SOBRETODO,
    JAQUETA,
    BERMUDA,
    PULSEIRA,
    BONE,
    GORRO,
    BANDANA,
    CACHECOL_DE_SEDA
}

enum STATUS {
    ATORDOAMENTO,
    ENVENENAMENTO,
    CONGELAMENTO,
    QUEIMADURA
}

enum ATRIBUTES {
    NAME,
    VALUE,
    CODE,
    SPRITE,
	FORCA,
    VELOCIDADE,
    SORTE,
    VIDA,
    ENERGIA,
    DEFESA,
    ATAQUE,
}

// Exemplo de

_mult = 0.1;
global.items = [
	Item_Create("Laser Rifle", 120, 2001, 11, 3, 5, 15, 5, 3, 2, 5),
	Item_Create("Plasma Cannon", 140, 2002, 12, 5, 5, 12, 3, 5, 4, 5),
	Item_Create("Quantum Blade", 90, 2003, 13, 3, 4, 10, 3, 2, 3, 5),
	Item_Create("Ion Blaster", 100, 2004, 14, 2, 3, 18, 10, 2, 3, 5),
	Item_Create("Gravity Hammer", 130, 2005, 2, 3, 15, 13, 3, 4, 5, 5),
	Item_Create("Photon Grenade", 80, 2006, 3, 5, 5, 15, 3, 1, 2, 5),
	Item_Create("Neutron Gun", 150, 2007, 17, 5, 3, 15, 8, 4, 4, 5),
	Item_Create("Antimatter Rifle", 230, 2008, 3, 4, 5, 4, 5, 5, 6, 5),
	Item_Create("Cryo Cannon", 110, 2009, 9, 7, 2, 5, 5, 2, 3, 1),
	Item_Create("EMP Launcher", 90, 2010, 10, 8, 1, 8, 5, 3, 2, 1),
	Item_Create("Nano Sword", 100, 2011, 11, 5, 3, 12, 6, 5, 4, 1),
	Item_Create("Thermal Lance", 130, 2012, 12, 3, 3, 6, 6, 4, 4, 2),
	Item_Create("Electro Whip", 70, 2013, 13, 2, 2, 20, 7, 1, 2, 1),
	Item_Create("Proton Axe", 150, 2014, 14, 2, 3, 5, 9, 7, 5, 1),
	Item_Create("Gauss Rifle", 140, 2015, 15, 3, 2, 7, 8, 3, 3, 2),   
	Item_Create("Plasma Cannon", 140, 2002, 12, 2, 3, 12, 1, 5, 4, 5)
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
_displayed_items = ds_list_create();

_selected = -1;

_last_selected = -1;

global._card_size = 0;
global._card_alpha = 0;

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = 4;

repeat(_num_to_draw){
    var _index = irandom_range(0, array_length(global.items) - 1);
	ds_list_add(_displayed_items, _index);
}

// Obtém a câmera ativa
_cam = view_get_camera(0);
_get_camera_x = camera_get_view_width(_cam);
_get_camera_y = camera_get_view_height(_cam);

// Define posições relativas para os botões
button_y = 100;
button_spacing = 50;