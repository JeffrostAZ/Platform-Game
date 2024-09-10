enum BASEATRIBUTES {
	FORCA,
    VELOCIDADE,
    SORTE,
	LENGTH
}


global.status_buttons = [
    ["STR", 1],
    ["AGI", 1],
    ["LUK", 1]
];

// Obtém a câmera ativa
_get_camera_x = 0;
_get_camera_y = 0;

// Define posições relativas para os botões
button_y = 100;
button_spacing = 100;
