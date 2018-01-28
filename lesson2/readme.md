* Asking for any questions in lesson 1

Everyone should test and run the 6-bar code in the buffer we built up last lesson. They should now listen to me, when i tweak up the sound to get it cool: they should do this themselves afterwards to get their one bassy sound.

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
You notice after one hour: the program is still running...what do you think??? Uaah...

* first steps of live_coding *(use_synth;use_synth_defaults)*

The loop is now running. I tell them, that we want to experiment with this loop, to get a bassy sound. At the very beginning of the loop i insert the line *use_synth :dsaw*. Then i wait until the loop begins again with that new sound. Explain, what you are doing: In the background is a synthesizer called Super Collider as a server which SonicPi uses to create sounds. PopUp the taskmanager to show the process on the machine (scsynth.exe). There are many predefined sounds you can see in the box when editing. I change the :dsaw to another synth and then notice, that also the volume may change. So i explain the general settings-statement *use_synth_defaults* with the parameter amp: to control the volume. to make it a little bit handy i define the variable in front of the whole programm with comment in front like: my mixer. Everyone should now do this, what i did: Create a live_loop, experiment with use_synth and control the volume.

* playing with *release*

After 'playing around' the students should stop: Is there anyone, who wants to let it hear for everyone? After that i explain, how a bassGuitar typically is build up: There are fat strings. When swinging a string then it would stop immediately. Every note stops immediately. You can do so with the release - Parameter you can insert as a second one in the use_synth_defaults statement separated bei a comma. Demonstrate this effect by using the synth :fm, which is my preferred synth to get a bassy sound. After that, i explain, that the release: parameter can also be used after every play statement, which would be taken first. While running the loop you can hear it and may make a fine-tuning: For example the longer notes should get a longer release. Just do that, also look to the protokoll: You can see, which bar is now running and may detect the note, you feel it's to short in sounding...Everyone should now experiment in their own loop with that parameter.  

