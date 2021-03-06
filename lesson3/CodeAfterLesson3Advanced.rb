
use_bpm 116
#volume For All
sr = 2
#####################
##   Mixer     #####
#####################
bassVolume = 0.8 * sr
drumVolume = 0.3#0.3 * sr
hihatVolume = 0.2#0.2 * sr
pianoAmp = 0.4#0.4 * sr
######################
define :playPattern  do |aChord|
  play aChord
  sleep 0.25
  sleep 0.25
  sleep 0.25
  play aChord
  sleep 0.25
  sleep 0.25
  sleep 0.25
  play aChord
  sleep 0.25
  sleep 0.25
  play aChord
  sleep 0.25
  sleep 0.25
  play aChord
  sleep 0.25
  sleep 0.25
  sleep 0.5
  play aChord
  sleep 0.25
  sleep 0.25
end
##################
live_loop :bassLine do
  #stop
  sync :drums
  use_synth_defaults amp: bassVolume, release: 0.5
  use_synth :fm
  # Takt 1
  puts "Takt 1"
  play :b2, release: 0.7
  sleep 1.5
  play :fs2
  sleep 0.5
  play :a2
  sleep 0.75
  play :fs2
  sleep 0.75
  play :a2
  sleep 0.5
  
  # Takt 2
  puts "Takt 2"
  sleep 0.5
  play :b2, release: 0.7
  sleep 0.5
  sleep 0.5
  play :fs2
  sleep 0.5
  play :a2
  sleep 0.75
  play :fs2
  sleep 0.75
  play :a2
  sleep 0.5
  
  #Takt 3 wie Takt 1
  puts "Takt 3"
  play :b2, release: 0.7
  sleep 1.5
  play :fs2
  sleep 0.5
  play :a2
  sleep 0.75
  play :fs2
  sleep 0.75
  play :a2
  sleep 0.5
  
  # Takt 4 wie Takt 2 mit letzte Note = fs
  puts "Takt 4"
  sleep 0.5
  play :b2, release: 0.7
  sleep 0.5
  sleep 0.5
  play :fs2
  sleep 0.5
  play :a2
  sleep 0.75
  play :fs2
  sleep 0.75
  play :fs2
  sleep 0.5
  
  # Takt 5
  puts "Takt 5"
  play :e2, release: 0.7
  sleep 1.5
  play :b2
  sleep 0.5
  play :e2
  sleep 0.75
  play :e2
  sleep 0.25
  sleep 0.5
  play :fs2
  sleep 0.5
  
  #Takt 6
  puts "Takt 6"
  play :g2, release: 0.7
  sleep 1.5
  play :g2
  sleep 0.5
  play :a2
  sleep 0.75
  play :a2
  sleep 0.25
  sleep 0.5
  play :fs2
  sleep 0.5
  
end
live_loop :drums do
  #stop
  use_sample_defaults amp: drumVolume
  4.times do
    sample :bd_haus
    sleep 1
  end
end
live_loop :hihats do
  #stop
  use_sample_defaults amp: hihatVolume
  sync :drums
  8.times do
    sample :drum_cymbal_pedal
    sleep 0.5
    
  end
end
live_loop :piano do
  #stop
  use_synth :piano
  use_synth_defaults amp: pianoAmp
  sync :bassLine
  with_fx :reverb, mix: 0.7 do
    if ! one_in(3)
      4.times do
        playPattern(chord(:a3,:minor))
      end
      spieleAkkord(chord(:d3,:minor))
      #spieleAkkord(chord(:f3, :major7))
      ####Alternativ:zum letzten Takt:
      play chord(:f3, :major7)
      sleep 0.75
      play  chord(:f3, :major7)
      sleep 0.25
      sleep 0.5
      play chord(:f3, :major7)
      sleep 0.5
      play chord(:g3, :major)
      sleep 0.5
      play chord(:g3,:major)
      sleep 0.5
      sleep 0.5
      play chord(:g3, :major)
      sleep 0.5
    else
      2.times do
        playPattern(chord(:a3,:minor))
      end
      play chord(:d2,:minor) , sustain: 8
      play chord(:d4,:minor) , sustain: 8
      sleep 8
      play chord(:f2,:major7), sustain: 2
      play chord(:f4,:major7), sustain: 2
      sleep 2
      play chord(:g2,:major),sustain: 6
      play chord(:g4,:major),sustain: 6
      sleep 6
    end
  end
end