#XenPi
#Is an application created by Sonic Pi and Processing.
#Also please use this when you play microtonal music performance.
#by Hirotoshi Uchida
#Developed on 25th, May, 2023
live_loop :xenpi do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  if connect[12]==0 then
    use_synth synth_names[connect[0]]
    play hz_to_midi(midi_to_hz(60)*2**(connect[8]/connect[7].to_f)), amp: connect[1], pan: connect[2], attack: connect[3] ,decay: connect[4] , sustain: connect[5] , release: connect[6]
    sleep connect[9]
  elsif connect[12]==1 then
    use_synth synth_names[connect[0]]
    play (chord hz_to_midi(midi_to_hz(60)*2**(connect[8]/connect[7].to_f)),chord_names[connect[10]]), amp: connect[1], pan: connect[2], attack: connect[3] ,decay: connect[4] , sustain: connect[5] , release: connect[6]
    puts chord_names[connect[10]]
    sleep connect[9]
  elsif connect[12]==2 then
    use_synth synth_names[connect[0]]
    play_pattern_timed scale(hz_to_midi(midi_to_hz(60)*2**(connect[8]/connect[7].to_f)),　scale_names[connect[11]]),　[connect[9]], amp: connect[1], pan: connect[2], attack: connect[3] ,decay: connect[4] , sustain: connect[5] , release: connect[6]
    puts scale_names[connect[11]]
    sleep 0
  end
end