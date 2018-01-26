# First Lesson
* Deployment Sonic Pi

Everyone get a DVD and a sheet. The sheet describes what's to do. Copy the whole CD on your Computer including SonicPi Portable
and the Workshop-Description similar to this GitProject. They start Sonic Pi.

* First instructions *(puts,play,comment-line)*

Explain Prefs and edit it to get another look-and-feel. Show the instruction *puts "Hello World"* and a Comment-Line *# My very first instruction*. Everyone should do this in  buffer0. The simplicity is typical for Ruby. Next instruction is play 60. Everyone should hear the tone. If not, try to correct it on place. Explain '60' is a convention (Midi-Note). Also have a look to Oszilloskop: keep in mind that a tone consist of a wave with a frequence and an amplitude. frequence=pitch and amplitude=volume. Next show :c4 and :C4 is the same like 60 with 'hearing' that's the same also with look to the protokoll. After that change :c4 to :c3 and notice that the Midi-Note is exactly 12 numbers below. Explain an octave and that the frequency is double from octav to octav.

* Further instructions *(sleep,use_bpm)*

Lets code two instructions: play 60 and play 67 and before running let gues what they would hear: beep and then a higher beep? Yes, everyone agree. Start the Run-Button: ooh, you hear it both together. For simplicity explain it provisionally: The machine is quicker than your ear can hear. It is important to know: The control-Flow of the program is from top to bottom. To hear the to tones one after the other explain the instruction sleep 1 and tell them: 1 is now 1 second. After that ask: did you here anywhere the expression 'Beats per minute'. If someone knows it he may explain that.  Explain it afterwards again with the help of the feed tapping on the floor and also pushing an the metronom i hold in the hand ( perhaps while a piece of music is running). The metronom shows the beats per minute. code use_bpm 120 in the very first line of buffer0 and push run. After that explain: 1 bpm normally means in music a quarter bar. One bar may have 3 beats, other may have 6 beats, most have 4 beats. A piece of music normally is divided in bars, every bar in a fix number of beats. Explain: play 60 sleep 1 is a quarter, play 60 sleep 2 is a half and so on.

* Code a 6 bar melody from sheet

Distribute the worksheet (consists of one page), explain a little bit whats to do and then let code the melody in buffer0 after erasing all other code in that buffer0. After that, let someone play that and wait until everyone is ready. It is not really necessary, that everyone is correct in 100 percent. Before every bar they should code puts "begin 1 bar", puts "begin 2 bar", ...





