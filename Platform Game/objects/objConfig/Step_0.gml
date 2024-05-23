// Step Event de objConfigMenu

// Navegação do menu
if (keyboard_check_pressed(vk_down)) {
    _selected_option = (_selected_option + 1) mod array_length(_menu_options);
}
if (keyboard_check_pressed(vk_up)) {
    _selected_option = (_selected_option - 1 + array_length(_menu_options)) mod array_length(_menu_options);
}

// Seleção de opções
if (keyboard_check_pressed(vk_enter)) {
    switch (_selected_option) {
        case 0: 
            _screen_resolution = (_screen_resolution % 4) + 1; // Alterna entre 3 resoluções
            set_screen_resolution(_screen_resolution);
            break;
        case 1: 
            _music_volume = (_music_volume + 0.1) % 1.1; // Aumenta o volume da música
            set_effects_volume(_music_volume);
            break;
        case 2: 
            _effects_volume = (_effects_volume + 0.1) % 1.1; // Aumenta o volume dos efeitos sonoros
            set_effects_volume(_effects_volume);
            break;
        case 3: 
            // Voltar ao menu principal ou fechar o menu de configuração
            room_goto(rm_menu);
            break;
    }
}
