foundSenders = ["C:/temp/it-s-perfectly-alright.wav", "C:/temp/well-isn-t-that-nice_70bpm.wav","C:/temp/now-who-s-that.wav","C:/temp/BFBS17Dame.wav","C:/temp/BFBS17SteveMason.wav"]


use_bpm 127
i = 0
live_loop :BFBSsearch do
  stop
  if i==foundSenders.size
    cue :kick
    stop
  end
  synth :bnoise , sustain: 2, amp: 0.3,release: 0
  sample [:bd_haus,:bd_tek,:vinyl_scratch,:bd_klub].choose, attack: 0.02, amp: 2
  sleep 2
  if one_in (5)
    if i==3
      sample foundSenders[tick], start: 0, finish: 1, amp: 3
      sleep sample_duration(foundSenders[look])
      i = i + 1
      sample foundSenders[tick], start: 0, finish: 1, amp: 3
      sleep sample_duration(foundSenders[look])
      i = i + 1
    else
      sample foundSenders[tick], start: 0, finish: 1, amp: 3
      sleep sample_duration(foundSenders[look])
      i = i + 1
    end
  end
end
#triwave = range(70,100,1).mirror #around 90
live_loop :fats , sync: :kick do
  #sync :begin
  sample :bd_haus#, cutoff: triwave.tick
  sleep 1
end
#end
live_loop :snares, sync: :fats do
  #stop
  sleep 0.5
  3.times do
    sample :sn_dolf, start: 0.1, finish: 0.3
    sleep 0.5
  end
end
###########################################
###next: Percussion
#lets add any percussions!
live_loop :perc ,sync: :fats do
   stop
  sample :elec_hollow_kick
  #sample :elec_tick
  #sample :elec_pop
  sleep 0.5
end
##########
#next: add a little break to snares:
#20.times #= 10 bars a 4 Beats
#..
#end
#sleep 4 insert:
#with_fx :wobble, phase: [0.25,0.5].ring.tick do
#    sample :ambi_lunar_land
#    sleep 12
#  end
#
#######
#######
#now fadein a bassline:
live_loop :bassline, sync: :fats do
  stop 
  # playing notes of c-minor in a special rhythm...
  notes = (ring :c3, :c4,:r,:Eb4, :r, :g3, :Bb3, :r)
  use_synth :fm
  use_synth_defaults divisor: 2
  with_fx :reverb , mix: 0.5, room: 0.8 do
    play notes.tick, release: 0.25, amp: 0.1
    sleep 0.5
  end
end
#####wow: make fats fix with cutoffs 90-95
#######
#######
#now: add a synth-line: fadin this, fadout bassline...
#synthVolume = 0.1
# perhaps another, handmade echo
live_loop :chordline, sync: :fats do
  stop
  use_synth :prophet
	
  with_fx :reverb , mix: 0.5 , room: 0.8 do
    play chord(:c4,:minor) , release: 0.5, amp: 1*synthVolume
    sleep 1
    play chord(:c4,:minor) , release: 0.5, amp: 0.3*synthVolume
    sleep 0.5
    play chord(:c4,:minor) , release: 0.5, amp: 0.2*synthVolume
    sleep 0.5
  end
  sleep 2
end
######
#adding another break!!!!to snares:

live_loop :break  do
  sync: :startnow
  use_synth :sine
  with_fx :reverb do
      16.times do
        play [:c4,:Eb4,:G4,:Bb4].ring.tick, release: 0.125
        sleep 0.25
      end
    end
 end
end
###fadout synthline and fadein bass again with !
###bass with: :dsaw
###