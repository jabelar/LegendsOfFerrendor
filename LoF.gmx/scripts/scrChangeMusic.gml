var musicIndex;

musicIndex = argument0;
audio_stop_sound(backgroundMusic);
backgroundMusic = audio_play_sound(musicIndex, 1, true);
