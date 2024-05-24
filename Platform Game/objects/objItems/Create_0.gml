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
    ["Laser Rifle", 120, 2001, 11, 16, 15, 15, 10, 30, 25, 50],
    ["Plasma Cannon", 140, 2002, 12, 17, 15, 12, 15, 50, 40, 50],
    ["Quantum Blade", 90, 2003, 13, 18, 15, 10, 20, 20, 35, 50],
    ["Ion Blaster", 100, 2004, 14, 15, 15, 18, 70, 25, 30, 50],
    ["Gravity Hammer", 130, 2005, 15, 19, 15, 13, 30, 40, 50, 50],
    ["Photon Grenade", 80, 2006, 16, 15, 30, 15, 35, 10, 20, 50],
    ["Neutron Gun", 150, 2007, 17, 10, 15, 15, 85, 40, 45, 50],
    ["Antimatter Rifle", 230, 2008, 18, 15, 15, 14, 45, 55, 60, 50]
    //["Cryo Cannon", 110, 2009, 9, 7, 10, 5, 50, 20, 30, 15],
    //["EMP Launcher", 90, 2010, 10, 8, 20, 8, 55, 30, 25, 10],
    //["Nano Sword", 100, 2011, 11, 5, 30, 12, 60, 15, 40, 15],
    //["Thermal Lance", 130, 2012, 12, 9, 8, 6, 65, 40, 45, 20],
    //["Electro Whip", 70, 2013, 13, 8, 35, 20, 70, 10, 25, 15],
    //["Proton Axe", 150, 2014, 14, 7, 10, 5, 90, 75, 50, 15],
    //["Gauss Rifle", 140, 2015, 15, 10, 20, 7, 80, 35, 35, 20],
    //["Fusion Bomb", 120, 2016, 16, 9, 5, 2, 85, 60, 70, 30],
    //["Radiation Gun", 100, 2017, 17, 6, 15, 6, 90, 25, 40, 15],
    //["Plasma Sword", 110, 2018, 18, 8, 25, 10, 95, 20, 30, 15],
    //["Ion Dagger", 80, 2019, 19, 7, 40, 15, 50, 100, 20, 10],
    //["Electro Staff", 90, 2020, 20, 5, 30, 10, 105, 20, 35, 15],
    //["Phaser Pistol", 120, 2021, 21, 9, 35, 8, 110, 15, 30, 10],
    //["Plasma Shield", 100, 2022, 22, 10, 10, 5, 115, 50, 60, 5],
    //["Sonic Blaster", 140, 2023, 23, 8, 25, 10, 120, 20, 35, 10],
    //["Vortex Gun", 150, 2024, 24, 6, 15, 6, 125, 40, 45, 15],
    //["Photon Blade", 130, 2025, 25, 7, 30, 12, 130, 15, 40, 15],
    //["Quantum Gauntlet", 120, 2026, 26, 9, 20, 8, 135, 30, 35, 10],
    //["Neutron Sword", 110, 2027, 27, 5, 25, 10, 140, 10, 25, 10],
    //["Anti-Grav Gun", 100, 2028, 28, 10, 10, 5, 145, 45, 50, 20],
    //["Dark Matter Rifle", 140, 2029, 29, 8, 15, 4, 150, 55, 60, 25],
    //["Fusion Sword", 120, 2030, 30, 9, 20, 7, 155, 35, 40, 15]
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
_displayed_items = ds_list_create();

_selected = -1;

_last_selected = -1;

global._card_size = 0;
global._card_alpha = 0;

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = 4;

for (var i = 0; i < _num_to_draw; i++) {
    var _index = irandom_range(0, array_length(global.items) - 1);
	ds_list_add(_displayed_items, _index);
}

button_spacing = 50;