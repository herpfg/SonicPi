* Any Questions last lesson?

* Data-Structurs: Array as a special List

Tell the students, that playing two or more notes  parallel means a 'harmonic expression': it may cause a fresh feeling,
also a melancholic feeling and so on. In Sonic pi it is very easy to do so: play 60 in one line and play 64 in second line (demonstrate).
Now, it's also possible to this in only one line by coding play [60,64]. So, it's now easy to guess, that you can also can code this:
play [60,64,67]. Tell now: The construction [60,64,67] is a special, but fundamental structur you'll find in most language:  it's an Array.
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
