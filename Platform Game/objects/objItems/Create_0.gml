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
    ["Laser Rifle", 1500, 2001, 1, 20, 15, 5, 80, 30, 25, 50],
    ["Plasma Cannon", 3000, 2002, 2, 30, 10, 2, 100, 50, 40, 70],
    ["Quantum Blade", 1200, 2003, 3, 40, 20, 10, 60, 20, 35, 60],
    ["Ion Blaster", 1800, 2004, 4, 25, 25, 8, 70, 25, 30, 55],
    ["Gravity Hammer", 2500, 2005, 5, 50, 5, 3, 90, 40, 50, 80],
    ["Photon Grenade", 800, 2006, 6, 35, 30, 15, 50, 10, 20, 65],
    ["Neutron Gun", 2200, 2007, 7, 28, 18, 7, 85, 35, 45, 60],
    ["Antimatter Rifle", 3500, 2008, 8, 60, 12, 4, 95, 55, 60, 85],
    ["Cryo Cannon", 1700, 2009, 9, 20, 10, 5, 75, 20, 30, 50],
    ["EMP Launcher", 2000, 2010, 10, 15, 20, 8, 65, 30, 25, 55],
    ["Nano Sword", 1000, 2011, 11, 45, 30, 12, 55, 15, 40, 60],
    ["Thermal Lance", 2700, 2012, 12, 50, 8, 6, 85, 40, 45, 70],
    ["Electro Whip", 900, 2013, 13, 30, 35, 20, 60, 10, 25, 55],
    ["Proton Axe", 2600, 2014, 14, 55, 10, 5, 90, 45, 50, 75],
    ["Gauss Rifle", 2400, 2015, 15, 40, 20, 7, 80, 35, 35, 65],
    ["Fusion Bomb", 4000, 2016, 16, 70, 5, 2, 100, 60, 70, 90],
    ["Radiation Gun", 2000, 2017, 17, 35, 15, 6, 75, 25, 40, 60],
    ["Plasma Sword", 1500, 2018, 18, 45, 25, 10, 70, 20, 30, 65],
    ["Ion Dagger", 800, 2019, 19, 30, 40, 15, 50, 10, 20, 55],
    ["Electro Staff", 1600, 2020, 20, 40, 30, 10, 65, 20, 35, 60],
    ["Phaser Pistol", 1200, 2021, 21, 25, 35, 8, 60, 15, 30, 55],
    ["Plasma Shield", 1800, 2022, 22, 20, 10, 5, 90, 50, 60, 40],
    ["Sonic Blaster", 1400, 2023, 23, 30, 25, 10, 70, 20, 35, 55],
    ["Vortex Gun", 2300, 2024, 24, 55, 15, 6, 85, 40, 45, 65],
    ["Photon Blade", 1300, 2025, 25, 40, 30, 12, 60, 15, 40, 60],
    ["Quantum Gauntlet", 2000, 2026, 26, 45, 20, 8, 75, 30, 35, 55],
    ["Neutron Sword", 1100, 2027, 27, 35, 25, 10, 55, 10, 25, 50],
    ["Anti-Grav Gun", 2500, 2028, 28, 50, 10, 5, 90, 45, 50, 75],
    ["Dark Matter Rifle", 3500, 2029, 29, 60, 15, 4, 95, 55, 60, 85],
    ["Fusion Sword", 2200, 2030, 30, 50, 20, 7, 80, 35, 40, 70]
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
_displayed_items = ds_list_create();

_selected = -1;

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = 4;

for (var i = 0; i < _num_to_draw; i++) {
    var _index = irandom_range(0, array_length(global.items) - 1);
	ds_list_add(_displayed_items, _index);
}

_item_menu = -1;

button_spacing = 50;