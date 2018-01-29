* Asking for any questions in lesson 1

Everyone should test and run the 6-bar code in the buffer we built up last lesson. They should now listen to me, when i tweak up the sound to get it cool: they should do it for themselves afterwards.

* Explain live_loop

Surround the 6 bars with a live_loop: explain the syntax (with a name you can choose for example your own name).
Press run and you hear: it repeats and repeats and repeats...until you press stop. Explain that the main thing is: 
First it runs from top to down, then it makes a gap to the first line again and it runs again from top to down. This is
a change of the rule, that the program should go from top to down and should finish as we learned last lesson. The flow of 
the program is now changed. Therefore a live_loop may be seen as a control-structur. We will later learn more other 
structurs that changes the standard-flow of a program. All these structures would basically do the same: there is anywhere a 
controled gap.
Tell the students a story: In professional programming a loop like a live_loop, that will never end, is a horror: Imagine a 
program, that is running to make the monthly salary payments on the accounts of your employees. You start the program to do so.
You notice after one hour: the program is still running...what do you think??? Uaah...So its good to know: There is another statement to stop a loop: *stop*

* first steps of live_coding *(use_synth;use_synth_defaults)*

The loop is running now. I tell them, that we want to experiment with this loop, to get a bassy sound. At the very beginning of the loop i insert the line *use_synth :dsaw*. Then i wait until the loop begins again with that new sound. Explain, what you are doing: In the background is a synthesizer called Super Collider as a server which SonicPi uses to create sounds. PopUp the taskmanager to show the process on the machine (scsynth.exe). There are many predefined sounds you can see in the box when editing in the SP-Buffer. I change the :dsaw to another synth and then notice, that also the volume may change. So i explain the general settings-statement *use_synth_defaults* with the parameter amp: to control the volume. to make it a little bit handy i define the variable in front of the whole programm with comment in front like: my mixer. Everyone should now do this, what i did: Create a live_loop, experiment with use_synth and control the volume.

* playing with *release*

After 'playing around' the students should stop: Is there anyone, who wants to let it hear? After that i explain a bass-guitar: There are fat strings. When swinging a string then it would stop immediately. Every note stops immediately. You can do so with the release - Parameter you can insert as a second one in the use_synth_defaults statement separated bei a comma. Demonstrate this effect by using the synth :fm, which is my preferred synth to get a bassy sound. After that, i explain, that the release: parameter can also be used after every play statement, which would be taken first. While running the loop you can hear it and may make a fine-tuning: For example the longer notes should get a longer release. Just do that, also look to the protokoll: You can see, which bar is now running and may help to detect the note, you feel it's to short in sounding...Everyone should now experiment in their own loop with that parameter.  

* build up one or more drum-loops

Stop the experiments of the students and tell them, we now want to build up a second loop: a drummer loop. To do so, we learn now, what a sample is. Explain, that the SP-samples are grouped as you can see in the tutorial. Also explain, that use_bpm has no influence on speed of playing the sample. On the other hand, if any longer sample is involved, it must have a correlation to the speed of the whole programm. To get information about the length of a sample, you can use the function sample_duration(aSample) and can log it by using *puts*. Later on we will make more experiments with longer samples, so we now concentrate on samples, which may be used to build up our own drum-track: they all will be short, so the length is now not interesting for us. Show a picture of a drummer-kit with the Big-Drum, TomToms,snare and hi-hat. For every picture play the corresponding sample (:snare and so on...). After that build up a live_loop with 4 sleeps (= one bar) in buffer1 and press run. Then insert a drum-sample every second beat. Ask before how i should do this and let the student do it on your computer in front. After that: stop the loop, build up a second loop that should be a hihat-loop. Ask now, how you should build up this loop, when playing hihats 8 times in one bar. After that, let them experiment with this loops to achieve their own drum-track by using snare,hihats,bigdrum and tomtom.

* synchronizing the drum-loops *(cue,use_sync)*

When students experiment to achieve a drum loop they like, anyone may detect that they wouldn't synchronize...They will ask you, so you can say: in a few minutes we will learn that. For the moment you can stop and start the code in the buffer to synchronize. Later on stop the experiments and demonstrate with the two loops you have already built in your buffer before: set a stop statement in your second loop, press run. Then set the stop statement on comment and press run again. Since the first loop is drumming only 2 times per bar, it will be heared, that the second hihat-loop is not running in time. Stop all and then start again. All may hear, that this sounds better. Explain the problem and why it is synchron when stopping all and start all again. Then explain the signal, every loop give in the beginning by looking on the protokoll. Explain that one loop can wait on the signal of the other loop by using *use_sync :nameOfSync*. To get a really good understanding place the question, what is going on, when one loop is running one bar and the other loop is running two or more bars. What is the difference when loop 1 is waiting for the signal of loop 2 or loop 2 is waiting for the signal of loop 1? Demonstrate it! Then tell the students, what can be done in live_coding: You run a loop like a drum - loop. Then programm a loop and run it in synch to the second. Be aware of the problem of the length of every loop. There may be many loops and it would growth to a complicate dependency, when one is sychronized to the other, which is synchronized to a third and so on...One idea is, to build up a main_loop, which simply sleeps and all other loops synchronize to that main loop. The main loop may be as long as one bar. 

* use_sample_defaults

By the way you should demonstrate, that there is a similar statement to use_synth_defaults: use_sample_defaults. They may also control the volume of every sample_loop

* build up drum_loop and bassline

After explaining  sychronization of loops, the students should work on the exercise: Start your drum_loop's in buffer0 without the bassline (by inserting the stop-statement). Then build up volumeKnob's for the sample-loops and use them. After that, 'hook-in' the bassline. They should work on it. At the end you should offer the possibility to the students to demonstrate it. For that, you can connect your loud-speaker with the computer of the student by bluetooth. The students may have a simpler way to build up this sound by running it alltogether and turn up the volumeKnobs. 
