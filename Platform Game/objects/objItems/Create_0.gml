_mult = 0.1;

global.items = [
    ["capacete", 1], ["óculos", 1], ["mochila", 1], 
    ["cinto", 1], ["meia", 1], ["relógio", 1], 
    ["anel", 1], ["colar", 1], ["bracelete", 1], 
    ["chapéu", 1], ["casaco", 1], ["calças", 1], 
    ["shorts", 1], ["sapato", 1], ["sandália", 1], 
    ["tênis", 1], ["gravata", 1], ["cachecol", 1], 
    ["luvas de inverno", 1], ["vestido", 1], ["saia", 1], 
    ["blusa", 1], ["sobretudo", 1], ["jaqueta", 1], 
    ["bermuda", 1], ["pulseira", 1], ["boné", 1], 
    ["gorro", 1], ["bandana", 1], ["cachecol de seda", 1]
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
global.displayed_items = ds_list_create();
var _all_items = ds_list_create();
for (var i = 0; i < array_length(global.items); i++) {
    ds_list_add(_all_items, i);
}

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = min(4, ds_list_size(_all_items));

for (var i = 0; i < _num_to_draw; i++) {
    var _index = irandom_range(0, ds_list_size(_all_items) - 1);
    var _item_index = _all_items[| _index];
    ds_list_add(global.displayed_items, global.items[_item_index]);
    ds_list_delete(_all_items, _index);
}
ds_list_destroy(_all_items);


_item_menu = -1;

button_spacing = 50;