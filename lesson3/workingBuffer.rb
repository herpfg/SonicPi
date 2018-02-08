# playing two notes is easy:
comment do
  play 60
  play 64
end
# in sonic pi you can do so by coding it in one line:
comment do
  play [60,64]
end


# [60,64] is called an Array. a fundamental structure. an array
# is more than a collection of objects: every object has its
# place, so [60,64,67] is not the same as [64,60,67]
comment do
  puts [1,2,3]==[2,1,3]
end
# you may pick one element out of an array:
comment do
  play [60,64,67][1]
end
# a typical structur for iterating:
comment do
  i = 0
  until  i > 2
    play [60,64,67][i]
    sleep 1
    i = i + 1
  end
end
# examine the difference between array and ring:
comment do
  i = 0
  myArray = [60,64,67]
  myRing = [60,64,67].ring
  until  i > 1000
    puts myRing [i]
    puts myArray [i]
    sleep 1
    i = i + 1
  end
end
## there are no differences in playing an Array or the ring:
comment do
  myArray = [60,64,67]
  myRingOutofmyArray = [60,64,67].ring
  play myArray
  sleep 1
  play myRingOutofmyArray
end



## rings are simpler in using it in a loop:
comment do
  i = 0
  myRing = [60,64,67].ring
  live_loop :demo_ring do
    play  myRing[i]
    i = i + 1
    sleep 1
  end
end
### something special for you in SP:
comment do
  myRing = [60,64,67].ring
  live_loop :demo_ring do
    play  myRing.tick
    puts  look
    sleep 1
    play myRing.tick
    #play  myRing.look
    puts  look
    sleep 1
  end
end

####Chords are rings in Sonic Pi:
comment do
  puts chord(:c4, :major) # the same as [60,64,67].ring
  puts chord(:e4,:minor)
end








