enum BASEATRIBUTES {
	FORCA,
    VELOCIDADE,
    SORTE,
    DEFESA,
    ATAQUE,
	LENGTH
}


global.status_buttons = [
    ["Força", 1],
    ["Velocidade", 1],
    ["Sorte", 1],
    ["Defesa", 1],
    ["Ataque", 1],
    ["Velocidade Tiro", 1],
    ["Frequência de Tiro", 1],	
];

// Obtém a câmera ativa
_cam = view_get_camera(0);
_get_camera_x = camera_get_view_x(_cam);
_get_camera_y = camera_get_view_y(_cam);

// Define posições relativas para os botões
button_y = 100;
button_spacing = 50;
