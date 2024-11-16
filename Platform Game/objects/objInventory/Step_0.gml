var _key_1 = keyboard_check_pressed(ord("1"));
var _key_2 = keyboard_check_pressed(ord("2"));
var _key_3 = keyboard_check_pressed(ord("3"));
var _key_4 = keyboard_check_pressed(ord("4"));
var _key_5 = keyboard_check_pressed(ord("5"));
// Verifica se as teclas numéricas de 1 a 5 foram pressionadas. 
// `keyboard_check_pressed(ord("X"))` retorna verdadeiro se a tecla específica foi pressionada neste frame.

var _next_item = keyboard_check_pressed(ord("E"));
// Verifica se a tecla "E" foi pressionada. Isso provavelmente serve para mudar para o próximo item na barra de atalhos (hotbar).

var _preview_item = keyboard_check_pressed(ord("Q"));
// Verifica se a tecla "Q" foi pressionada. Isso provavelmente serve para mudar para o item anterior na barra de atalhos (hotbar).

if (_hotbar_item > 4) {
    _hotbar_item = 0;  
}
// Se o índice do item atual na hotbar for maior que 4 (excedendo o limite da barra com 5 itens), ele é resetado para 0, reiniciando a seleção de itens.

else if (_hotbar_item < 0) {
    _hotbar_item = 4;  
}
// Se o índice do item atual for menor que 0 (valor inválido), ele é ajustado para 4, selecionando o último item da hotbar.

if (_key_1) {
    _hotbar_item = 0;
} else if (_key_2) {
    _hotbar_item = 1;
} else if (_key_3) {
    _hotbar_item = 2;
} else if (_key_4) {
    _hotbar_item = 3;
} else if (_key_5) {
    _hotbar_item = 4;
}
// Verifica qual tecla numérica foi pressionada (de 1 a 5) e ajusta o índice do item da hotbar de acordo com a tecla. 
// Se o jogador pressionar "1", o índice é definido como 0, e assim por diante até "5", que define o índice como 4.

if (_next_item) {
    _hotbar_item++;
}
// Se a tecla "E" for pressionada, o item selecionado na hotbar avança para o próximo (incrementa o índice da hotbar).

else if (_preview_item) {
    _hotbar_item--;
}
// Se a tecla "Q" for pressionada, o item selecionado na hotbar retrocede para o anterior (decrementa o índice da hotbar).

if (mouse_wheel_up()) {
    _hotbar_item++;
}
// Se o jogador rolar o scroll do mouse para cima, a hotbar avança para o próximo item (incrementa o índice).

else if (mouse_wheel_down()) {
    _hotbar_item--;
}
// Se o jogador rolar o scroll do mouse para baixo, a hotbar retrocede para o item anterior (decrementa o índice).
