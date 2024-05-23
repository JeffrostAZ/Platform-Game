// Draw Event de objConfigMenu
draw_set_font(fnt_config);
var _menu_x = display_get_width() / 2;
var _menu_y = display_get_height() / 2 - (array_length(_menu_options) * 20) / 2;

for (var _i = 0; _i < array_length(_menu_options); _i++) {
    var _option_y = _menu_y + _i * 40;
    if (_i == _selected_option) {
        draw_set_color(c_lime);
    } else {
        draw_set_color(c_white);
    }
    draw_text(_menu_x - string_width(_menu_options[_i]) / 2, _option_y, _menu_options[_i]);
}

// Desenhar valores atuais
draw_set_color(c_white);
draw_text(_menu_x + 100, _menu_y + 0 * 40, string(_screen_resolution));
draw_text(_menu_x + 100, _menu_y + 1 * 40, string(_music_volume));
draw_text(_menu_x + 100, _menu_y + 2 * 40, string(_effects_volume));
