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
    ["capacete", 0, 1010, 0, 10, 2, 5, 50, 15, 35, 5],
    ["óculos", 0, 1020, 0, 10, 2, 5, 50, 15, 35, 5],
    ["mochila", 0, 1030, 0, 10, 2, 5, 50, 15, 35, 5],
    ["cinto", 0, 1040, 0, 10, 2, 5, 50, 15, 35, 5],
    ["meia", 0, 1050, 0, 10, 2, 5, 50, 15, 35, 5],
    ["relógio", 0, 1060, 0, 10, 2, 5, 50, 15, 35, 5],
    ["anel", 0, 1070, 0, 10, 2, 5, 50, 15, 35, 5],
    ["colar", 0, 1080, 0, 10, 2, 5, 50, 15, 35, 5],
    ["bracelete", 0, 1090, 0, 10, 2, 5, 50, 15, 35, 5],
    ["chapéu", 0, 1100, 0, 10, 2, 5, 50, 15, 35, 5],
    ["casaco", 0, 1110, 0, 10, 2, 5, 50, 15, 35, 5],
    ["calças", 0, 1120, 0, 10, 2, 5, 50, 15, 35, 5],
    ["shorts", 0, 1130, 0, 10, 2, 5, 50, 15, 35, 5],
    ["sapato", 0, 1140, 0, 10, 2, 5, 50, 15, 35, 5],
    ["sandália", 0, 1150, 0, 10, 2, 5, 50, 15, 35, 5],
    ["tênis", 0, 1160, 0, 10, 2, 5, 50, 15, 35, 5],
    ["gravata", 0, 1170, 0, 10, 2, 5, 50, 15, 35, 5],
    ["cachecol", 0, 1180, 0, 10, 2, 5, 50, 15, 35, 5],
    ["luvas de inverno", 0, 1190, 0, 10, 2, 5, 50, 15, 35, 5],
    ["vestido", 0, 1200, 0, 10, 2, 5, 50, 15, 35, 5],
    ["saia", 0, 1210, 0, 10, 2, 5, 50, 15, 35, 5],
    ["blusa", 0, 1220, 0, 10, 2, 5, 50, 15, 35, 5],
    ["sobretudo", 0, 1230, 0, 10, 2, 5, 50, 15, 35, 5],
    ["jaqueta", 0, 1240, 0, 10, 2, 5, 50, 15, 35, 5],
    ["bermuda", 0, 1250, 0, 10, 2, 5, 50, 15, 35, 5],
    ["pulseira", 0, 1260, 0, 10, 2, 5, 50, 15, 35, 5],
    ["boné", 0, 1270, 0, 10, 2, 5, 50, 15, 35, 5],
    ["gorro", 0, 1280, 0, 10, 2, 5, 50, 15, 35, 5],
    ["bandana", 0, 1290, 0, 10, 2, 5, 50, 15, 35, 5],
    ["cachecol de seda", 0, 1300, 0, 10, 2, 5, 50, 15, 35, 5]
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
_displayed_items = ds_list_create();

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = 4;

for (var i = 0; i < _num_to_draw; i++) {
    var _index = irandom_range(0, array_length(global.items) - 1);
	ds_list_add(_displayed_items, _index);
	show_debug_message(ds_list_find_value(_displayed_items, i));
}

_item_menu = -1;

button_spacing = 50;