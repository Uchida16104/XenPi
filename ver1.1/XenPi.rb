#XenPi
#Is an application created by Sonic Pi and Processing.
#Also please use this when you play microtonal music performance.
#by Hirotoshi Uchida
#Developed on 25th, May, 2023
#Released on 4th, June, 2023
live_loop :synth1 do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  microtone1=hz_to_midi(midi_to_hz(60)*2**(connect[8]/connect[7].to_f))
  use_bpm connect[15]
  puts fx_names[connect[16]]
  with_fx fx_names[connect[16]],mix:connect[17] do
    if connect[14]==0 then
      use_synth synth_names[connect[0]]
      play microtone1 , amp: connect[1] , pan: connect[2] , attack: connect[3] , decay: connect[4] , sustain: connect[5] , release: connect[6] if spread(connect[10],connect[11]).tick(step: connect[12])
      sleep connect[13]
    elsif connect[14]==1 then
      use_synth synth_names[connect[0]]
      play (chord microtone1 , chord_names[connect[9]]) , amp: connect[1] , pan: connect[2] , attack: connect[3] , decay: connect[4] , sustain: connect[5] , release: connect[6] if spread(connect[10] , connect[11]).tick(step: connect[12])
      puts chord_names[connect[9]]
      sleep connect[13]
    elsif connect[14]==2 then
      use_synth synth_names[connect[0]]
      play_pattern_timed (chord microtone1 , chord_names[connect[9]]) , [connect[13]] , amp: connect[1], pan: connect[2] , attack: connect[3] , decay: connect[4] , sustain: connect[5] , release: connect[6]
      puts chord_names[connect[9]]
      sleep 0
    end
  end
end
live_loop :synth2 do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  microtone2=hz_to_midi(midi_to_hz(60)*2**(connect[26]/connect[25].to_f))
  use_bpm connect[15]
  puts fx_names[connect[33]]
  with_fx fx_names[connect[33]],mix:connect[34] do
    if connect[32]==0 then
      use_synth synth_names[connect[18]]
      play microtone2 , amp: connect[19] , pan: connect[20] , attack: connect[21] , decay: connect[22] , sustain: connect[23] , release: connect[24] if spread(connect[28],connect[29]).tick(step: connect[30])
      sleep connect[31]
    elsif connect[32]==1 then
      use_synth synth_names[connect[18]]
      play (chord microtone2 , chord_names[connect[27]]) , amp: connect[19] , pan: connect[20] , attack: connect[21] , decay: connect[22] , sustain: connect[23] , release: connect[24] if spread(connect[28] , connect[29]).tick(step: connect[30])
      puts chord_names[connect[27]]
      sleep connect[31]
    elsif connect[32]==2 then
      use_synth synth_names[connect[18]]
      play_pattern_timed (chord microtone2 , chord_names[connect[27]]) , [connect[31]] , amp: connect[19], pan: connect[20] , attack: connect[21] , decay: connect[22] , sustain: connect[23] , release: connect[24]
      puts chord_names[connect[27]]
      sleep 0
    end
  end
end
live_loop :bd do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  puts fx_names[connect[35]]
  with_fx fx_names[connect[35]] , mix: connect[36] do
    for bd_amp in 38..45 do
      sample sample_names(:bd)[connect[37]] , amp: connect[bd_amp] , pan: connect[46] , attack: connect[47] , decay: connect[48] , sustain: connect[49] , release: connect[50]
      sleep connect[51]
    end
    puts sample_names(:bd)[connect[37]]
  end
end
live_loop :sn do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  puts fx_names[connect[52]]
  with_fx fx_names[connect[52]] , mix: connect[53] do
    for sn_amp in 55..62 do
      sample sample_names(:sn)[connect[54]] , amp: connect[sn_amp] , pan: connect[63] , attack: connect[64] , decay: connect[65] , sustain: connect[66] , release: connect[67]
      sleep connect[68]
    end
    puts sample_names(:sn)[connect[54]]
  end
end
live_loop :drum do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  puts fx_names[connect[69]]
  with_fx fx_names[connect[69]] , mix: connect[70] do
    for drum_amp in 72..79 do
      sample sample_names(:drum)[connect[71]] , amp: connect[drum_amp] , pan: connect[80] , attack: connect[81] , decay: connect[82] , sustain: connect[83] , release: connect[84]
      sleep connect[85]
    end
    puts sample_names(:drum)[connect[71]]
  end
end
