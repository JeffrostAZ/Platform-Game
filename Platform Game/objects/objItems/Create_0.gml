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
    ["Laser Rifle", 1200, 2001, 1, 6, 5, 5, 10, 30, 25, 15],
    ["Plasma Cannon", 1400, 2002, 2, 7, 3, 2, 15, 50, 40, 15],
    ["Quantum Blade", 900, 2003, 3, 8, 5, 10, 20, 20, 35, 15],
    ["Ion Blaster", 1000, 2004, 4, 5, 5, 8, 70, 25, 30, 15],
    ["Gravity Hammer", 1300, 2005, 5, 9, 5, 3, 30, 40, 50, 30],
    ["Photon Grenade", 800, 2006, 6, 5, 30, 15, 35, 10, 20, 25],
    ["Neutron Gun", 1500, 2007, 7, 10, 3, 7, 85, 40, 45, 25],
    ["Antimatter Rifle", 1300, 2008, 8, 6, 12, 4, 45, 55, 60, 30],
    ["Cryo Cannon", 1100, 2009, 9, 7, 10, 5, 50, 20, 30, 15],
    ["EMP Launcher", 900, 2010, 10, 8, 20, 8, 55, 30, 25, 10],
    ["Nano Sword", 1000, 2011, 11, 5, 30, 12, 60, 15, 40, 15],
    ["Thermal Lance", 1300, 2012, 12, 9, 8, 6, 65, 40, 45, 20],
    ["Electro Whip", 700, 2013, 13, 8, 35, 20, 70, 10, 25, 15],
    ["Proton Axe", 1500, 2014, 14, 7, 10, 5, 90, 75, 50, 15],
    ["Gauss Rifle", 1400, 2015, 15, 10, 20, 7, 80, 35, 35, 20],
    ["Fusion Bomb", 1200, 2016, 16, 9, 5, 2, 85, 60, 70, 30],
    ["Radiation Gun", 1000, 2017, 17, 6, 15, 6, 90, 25, 40, 15],
    ["Plasma Sword", 1100, 2018, 18, 8, 25, 10, 95, 20, 30, 15],
    ["Ion Dagger", 800, 2019, 19, 7, 40, 15, 50, 100, 20, 10],
    ["Electro Staff", 900, 2020, 20, 5, 30, 10, 105, 20, 35, 15],
    ["Phaser Pistol", 1200, 2021, 21, 9, 35, 8, 110, 15, 30, 10],
    ["Plasma Shield", 1000, 2022, 22, 10, 10, 5, 115, 50, 60, 5],
    ["Sonic Blaster", 1400, 2023, 23, 8, 25, 10, 120, 20, 35, 10],
    ["Vortex Gun", 1500, 2024, 24, 6, 15, 6, 125, 40, 45, 15],
    ["Photon Blade", 1300, 2025, 25, 7, 30, 12, 130, 15, 40, 15],
    ["Quantum Gauntlet", 1200, 2026, 26, 9, 20, 8, 135, 30, 35, 10],
    ["Neutron Sword", 1100, 2027, 27, 5, 25, 10, 140, 10, 25, 10],
    ["Anti-Grav Gun", 1000, 2028, 28, 10, 10, 5, 145, 45, 50, 20],
    ["Dark Matter Rifle", 1400, 2029, 29, 8, 15, 4, 150, 55, 60, 25],
    ["Fusion Sword", 1200, 2030, 30, 9, 20, 7, 155, 35, 40, 15]
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
_displayed_items = ds_list_create();

_selected = -1;

_last_selected = -1;

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = 4;

for (var i = 0; i < _num_to_draw; i++) {
    var _index = irandom_range(0, array_length(global.items) - 1);
	ds_list_add(_displayed_items, _index);
}

_item_menu = -1;

button_spacing = 50;