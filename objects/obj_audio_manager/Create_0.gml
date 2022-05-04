// Default volume for jukebox song: 0.50
// Reduced volume for jukebox song: 0.25

// Default volume for bar ambience: 0.25
// Reduced volume for bar ambience: 0.10

// Default volume for liquid dripping: 0.5

globalvar default_volume;
globalvar current_volume;
globalvar reduced_volume;



// Plays looping audio in the background
jukebox_song = audio_play_sound(snd_Mary_s_Theme, 1, true)
bar_ambience = audio_play_sound(snd_bar_ambience, 2, true)
liquid_dripping = audio_play_sound(snd_liquid_dripping, 3, true)

pitch_value = 1.00

audio_sound_gain(jukebox_song, 0.50, 0)
audio_sound_gain(bar_ambience, 0.25, 0)
audio_sound_gain(liquid_dripping, 0.00, 0)

audio_pause_sound(jukebox_song)
