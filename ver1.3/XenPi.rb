=begin
XenPi
Is an application created by Processing, Sonic Pi Orca, FoxDot, TidalCycles and hydra.
Also please use this when you play microtonal music performance.
By Hirotoshi Uchida
Developed on 25th, May, 2023
Released on 2nd, Sep, 2023
=end

live_loop :synth1 do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  note1, velocity1= sync "/midi:iacdriver_bus1:1/note_on"
  microtone1=hz_to_midi(midi_to_hz(hz_to_midi(connect[92]+note1)-9)*2**(connect[8]/connect[7].to_f))
  use_synth synth_names[connect[0]]
  with_fx fx_names[connect[16]] , mix: connect[17] do
    if connect[14]==0 then
      use_synth synth_names[connect[0]]
      play microtone1 , amp: connect[1] * velocity1 / 127.0 , pan: connect[2] , attack: connect[3] , decay: connect[4] , sustain: connect[5] , release: connect[6] if spread(connect[10],connect[11]).tick(step: connect[12])
      midi_note_on microtone1 , connect[1] , channel: 1
      sleep connect[13]
    elsif connect[14]==1 then
      use_synth synth_names[connect[0]]
      play (chord microtone1 , chord_names[connect[9]]) , amp: connect[1] * velocity1 / 127.0 , pan: connect[2] , attack: connect[3] , decay: connect[4] , sustain: connect[5] , release: connect[6] if spread(connect[10] , connect[11]).tick(step: connect[12])
      midi_note_on (chord microtone1 , chord_names[connect[9]]) , connect[1] , channel: 1
      puts chord_names[connect[9]]
      sleep connect[13]
    elsif connect[14]==2 then
      use_synth synth_names[connect[0]]
      play_pattern_timed (chord microtone1 , chord_names[connect[9]]) , [connect[13]] , amp: connect[1] * velocity1 / 127.0, pan: connect[2] , attack: connect[3] , decay: connect[4] , sustain: connect[5] , release: connect[6]
      midi_note_on (chord microtone1 , chord_names[connect[9]]) , connect[1] , channel: 1
      puts chord_names[connect[9]]
      sleep 0
    end
  end
end
live_loop :synth2 do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  note2, velocity2= sync "/midi:iacdriver_bus2:1/note_on"
  microtone2=hz_to_midi(midi_to_hz(hz_to_midi(connect[93]+note2)-9)*2**(connect[26]/connect[25].to_f))
  use_bpm connect[15]
  puts fx_names[connect[33]]
  with_fx fx_names[connect[33]] , mix: connect[34] do
    if connect[32]==0 then
      use_synth synth_names[connect[18]]
      play microtone2 , amp: connect[19] * velocity2 / 127.0 , pan: connect[20] , attack: connect[21] , decay: connect[22] , sustain: connect[23] , release: connect[24] if spread(connect[28],connect[29]).tick(step: connect[30])
      midi_note_on microtone2 , velocity2 , channel: 2
      sleep connect[31]
    elsif connect[32]==1 then
      use_synth synth_names[connect[18]]
      play (chord microtone2 , chord_names[connect[27]]) , amp: connect[19] * velocity2 / 127.0 , pan: connect[20] , attack: connect[21] , decay: connect[22] , sustain: connect[23] , release: connect[24] if spread(connect[28] , connect[29]).tick(step: connect[30])
      midi_note_on (chord microtone2 , chord_names[connect[27]]) , connect[19] , channel: 2
      puts chord_names[connect[27]]
      sleep connect[31]
    elsif connect[32]==2 then
      use_synth synth_names[connect[18]]
      play_pattern_timed (chord microtone2 , chord_names[connect[27]]) , [connect[31]] , amp: connect[19] * velocity2 / 127.0, pan: connect[20] , attack: connect[21] , decay: connect[22] , sustain: connect[23] , release: connect[24]
      midi_note_on (chord microtone2 , chord_names[connect[27]]) , connect[19] , channel: 2
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
live_loop :hat do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  puts fx_names[connect[69]]
  with_fx fx_names[connect[69]] , mix: connect[70] do
    for hat_amp in 72..79 do
      sample sample_names(:hat)[connect[71]] , amp: connect[hat_amp] , pan: connect[80] , attack: connect[81] , decay: connect[82] , sustain: connect[83] , release: connect[84]
      sleep connect[85]
    end
    puts sample_names(:hat)[connect[71]]
  end
end
live_loop :slide do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  flac=sample_names(sample_groups[connect[86]])[connect[87]]
  speed=connect[88]
  amplitude=connect[89]
  init=connect[90].to_i
  term=connect[91].to_i
  value=(init-term).abs
  puts flac
  puts speed
  puts amplitude
  puts init
  puts term
  ctrl = sample flac, pitch: 2**(init/12.to_f) , amp: amplitude , pan: connect[96] , rate: speed , amp_slide: sample_duration(flac)/(init-term).abs , pitch_slide: sample_duration(flac)/(init-term).abs
  puts fx_names[connect[94]]
  with_fx fx_names[connect[94]] , mix: connect[95] do
    value.times do
      sleep sample_duration(flac)/(init-term).abs/2
      control ctrl , pitch: 2**(term/12.to_f) , amp: amplitude , pan: connect[96]
      sleep sample_duration(flac)/(init-term).abs/2
    end
  end
end
live_loop :synth3 do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  note3, velocity3= sync "/midi:iacdriver_bus3:1/note_on"
  use_bpm connect[15]
  microtone3=hz_to_midi(midi_to_hz(hz_to_midi(connect[97]+note3)-9)*2**(connect[99]/connect[98].to_f))
  microtone4=hz_to_midi(midi_to_hz(hz_to_midi(connect[100]+note3)-9)*2**(connect[102]/connect[101].to_f))
  puts fx_names[connect[103]]
  with_fx fx_names[connect[103]] , mix: connect[104] do
    if connect[105]==0 then
      use_synth synth_names[connect[106]]
      bend=play microtone3 , amp: connect[119] * velocity3 / 127.0 , pan: connect[120] , release: connect[108]*4 , note_slide: connect[108]
      midi_note_on microtone3 , connect[119] , channel: 3
      sleep connect[108]
      control bend , note: microtone4
    elsif connect[105]==1 then
      use_synth synth_names[connect[106]]
      bend=play (chord microtone3 , chord_names[connect[107]]) , amp: velocity3 / 127.0 * connect[119] , pan: connect[120] , release: connect[108]*4 , note_slide: connect[108]
      midi_note_on (chord microtone3 , chord_names[connect[107]]) , connect[119] , channel: 3
      puts chord_names[connect[107]]
      sleep connect[108]
      control bend , note: (chord microtone4 , chord_names[connect[109]])
      puts chord_names[connect[109]]
    elsif connect[105]==2 then
      use_synth synth_names[connect[106]]
      bend=play (chord microtone3 , chord_names[connect[107]]).tick , amp: connect[119] * velocity3 / 127.0 , pan: connect[120] , release: connect[108]*4 , note_slide: connect[108]
      midi_note_on (chord microtone3 , chord_names[connect[107]]).tick , connect[119] , channel: 3
      puts chord_names[connect[107]]
      sleep connect[108]
      control bend , note: (chord microtone4 , chord_names[connect[109]]).tick
      puts chord_names[connect[109]]
    end
  end
end
live_loop :loop do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  puts fx_names[connect[110]]
  with_fx fx_names[connect[110]] , mix: connect[111] do
    sample sample_names(:loop)[connect[112]] , amp: connect[113] , pan: connect[114] , attack: sample_duration(sample_names(:loop)[connect[112]]) / connect[115] , decay: sample_duration(sample_names(:loop)[connect[112]]) / connect[116] , sustain: sample_duration(sample_names(:loop)[connect[112]]) / connect[117] , release: sample_duration(sample_names(:loop)[connect[112]]) / connect[118] , rate: sample_duration(sample_names(:loop)[connect[112]]) / (connect[121] / connect[15])
    sleep sample_duration(sample_names(:loop)[connect[112]]) / (connect[121] / connect[15])
    puts sample_names(:loop)[connect[112]]
    puts sample_duration(sample_names(:loop)[connect[112]])
  end
end
live_loop :cc do
  use_real_time
  connect=sync "/osc*/xenpi/synth"
  use_bpm connect[15]
  midi_cc connect[122].to_i,connect[123]
  sleep connect[124]
end