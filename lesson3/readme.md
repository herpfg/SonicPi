* Any Questions last lesson?

* Data-Structurs: array and ring 

Tell the students, that playing two or more notes  parallel means a 'harmonic expression': it may cause a fresh feeling,
also a melancholic feeling and so on. In Sonic pi it is very easy to do so: play 60 in one line and play 64 in second line (demonstrate).
Now, it's also possible to this in only one line by coding play [60,64]. So, it's now easy to guess, that you can also can code this:
play [60,64,67]. Tell now: The construction [60,64,67] is a special, but fundamental structur you'll find in most languages:  it's an Array.
If you program in Java or in Python in professional, you'll deal daily with this structure. An array is something, that may be seen as a 
collection of objects, but with a further characteristic: Every element in that collection has a fix place-number. In our example, the 
number 60 is on place 1, the number 64 place 2, and so on. The array [64,60,67] is formally seen not the same as [60,64,67]. In programming
you typically pick a special element out of an Array. This is possible by using an index: Programm puts [60,64,67][1], whereas [1] is
the index. You can see the element in the protokoll: you see 64. Tell them, that the beginning is in 0.
In professional programming you often ,iterate' an Array. this means, you will work with every element, one after the other. For example,
you should play all notes one after the other. A typical structure for that in many languages is like this:


```
i = 0
until i > 2
   play [60,64,67][i]
   sleep 1
   i = i + 1
end
```
A  datastructure (like an array) are also provided with functions (in other languages: methods), which support  handling of that structure in a program. For example: [60,64,67].size provides the length of an Array. There are many different functions for any structure. It makes no sense to learn them: You will learn them automatically when programming and solve a problem. 
Typically a program-language, which is designed for a special problem-domain, has its own structures and functions to work with. Sonic Pi, created to make music, provides structures (combined with methods)  to support music programming. One essential structur in music is a *ring*, quite similar to an array: In Sonic Pi there are several ways to create a ring. For example: *[60,64,67].ring*. You will recognize the difference to an array, when you run a loop like this one:

```
i = 0
myArray = [60,64,67]
myRing = [60,64,67].ring
until  i > 1000
   puts myRing [i]
   puts myArray [i]
   sleep 1
   i = i + 1
end
```
You can see in the protokoll, that the puts runs periodically through the ring. In Sonic Pi you can play also a ring, which has no different to play an array, as you can hear:
```
myArray = [60,64,67]
myRingOutofmyArray = [60,64,67].ring
play myArray
sleep 1
play myRingOutofmyArray
```

A ring is very useful in a live_loop:
```
i = 0
myRing = [60,64,67].ring
live_loop :demo_ring do
   play  myRing[i]
   i = i + 1
   sleep 1
 end
```
in this live_loop you shouldn't take care of the right number of i. In an array you have to take care, that the number of i is not more than 2 (and not less than 0). Sonic Pi prevents also something special for you: the *ticker* in a live_loop. Run this and hear:

```
myRing = [60,64,67].ring
live_loop :demo_ring do
   play  myRing.tick
   sleep 1
 end
```
That is the same like the previous loop, except you should not use a index and should not increment the index. This will be done in the function (or: method) *tick* of the structur ring. Be aware, that there is an index internally. Sonic Pi increments the index for you. you can take that internal index by using the variable *look*, as you can see:
```
myRing = [60,64,67].ring
   live_loop :demo_ring do
   play  myRing.tick
   puts  look
   sleep 1
   play myRing.tick
   #play  myRing.look
   puts  look
   sleep 1
 end

```
*  Chords

Now we will learn, what a chord is: a Chord in a musical sense is a number of notes: Minimum 2, frequently 3 , sometimes more than 3 notes. The right structure for that would be an array, as we've seen above. For example: [60,64,67]. In Sonic Pi a chord is defined as a ring, because often in melodys, consist of a playing loop, you will take single notes out of a chord. Since we've seen above, it's quiet easy to handle that with the ring as structure. Lets see and hear, how you can get chords in Sonic Pi:

```
puts chord(:c4, :major) # the same as [60,64,67].ring
puts chord(:e4,:minor)
```
You will learn or already know, which rule chords play in music: You'll learn it in harmony teaching. Often in praxis  it's simply that: Chords sounds different, take a specially if it sounds good for you. There exists rules, which chords you should take in combination to design music. For now, you will get in a work-sheet, which chords you have to play. But before that will learn a special programming-construction, which may help you in programming:

* Lets program a Chord-Melody

work: Program one bar, consist of 4 beats, playing chord( :a3,:minor) along this pattern: (X - - X - - X - X - X - - - X-) 

* Lets define a function to shorten the code

So, you have done this: you play one bar the chord in a special rhythm. Now, you should change the chord for the following bar, but the rythm should be the same. How would you now program that? Right, one way is: Copy the lines of code, paste it after the first bar and change the chord. Ok!. Then after the second bar, you should change the chord again. How would you do that? Ok: again we make it with copy and paste...So, what will grow up after i.e. 10 bars you always should change the chord? Yes: there would be tone's of source-code lines. Now we will learn, how we can get it simpler: define a *function* !


+
