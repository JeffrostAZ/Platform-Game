// Inicializando variáveis
_menu_options = ds_list_create();
_selected_option = 0;
_font = fnt_menu;

// Lista de opções de menu para fácil manutenção e atualização
var _menu_items = ["New Game", "Continue", "Options", "Quit"];

// Adicionando opções de menu à lista usando um loop com a nova sintaxe
for (var _i = 0; _i < array_length(_menu_items); _i++) {
    ds_list_add(_menu_options, _menu_items[_i]);
}

// Definindo o _option_count após a lista ter sido preenchida
_option_count = ds_list_size(_menu_options);


#region Save System

global.grid_count = 0;

#endregion