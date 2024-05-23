// Obtém a câmera ativa
_cam = view_get_camera(0);
_get_camera_x = camera_get_view_x(_cam);
_get_camera_y = camera_get_view_y(_cam);

// Define posições relativas para os botões
button_y = 100;
button_spacing = 50;

// Create Event de objConfigMenu

// Opções de configuração
_screen_resolution = 1; // 1: 800x600, 2: 1024x768, 3: 1280x720, etc.
_music_volume = 0.5; // Volume da música (0.0 a 1.0)
_effects_volume = 0.5; // Volume dos efeitos sonoros (0.0 a 1.0)

// Opções do menu
_menu_options = ["Screen Resolution", "Music Volume", "Effects Volume", "Back"];
_selected_option = 0;

// Inicie a música (exemplo)
audio_play_sound(sndFootsteps, 1, true);

// Função para ajustar a resolução da tela
function set_screen_resolution(_option) {
    switch (_option) {
        case 1: 
		window_set_size(800, 600);
		break;
        case 2: 
		window_set_size(1024, 768);		
		break;
        case 3: 
		window_set_size(1280, 720);		
		break;
        case 4: 
		window_set_fullscreen(true);
		break;		
        // Adicione mais resoluções conforme necessário
    }
}

// Função para ajustar o volume dos efeitos sonoros
function set_effects_volume(_volume) {
    global.effects_volume = clamp(_volume, 0, 1); // Certifique-se de que o volume esteja entre 0 e 1
    // Ajuste o volume de efeitos sonoros em execução
    // Isso depende de como você gerencia os efeitos sonoros no seu jogo
    // Aqui está um exemplo genérico:
    var _all_sounds = [sndFootsteps, sndShoot]; // Liste todos os sons de efeito
    for (var _i = 0; _i < array_length(_all_sounds); _i++) {
        audio_sound_gain(_all_sounds[_i], global.effects_volume, 0);
    }
}