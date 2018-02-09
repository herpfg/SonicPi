# WorkingSheet:
# program one bar with: playing chord(:a3,:minor) along the
# pattern (X - - X - - X - X - X - - - X-)

# the following lines may be a solution:
comment do
  play chord(:a3,:minor)
  sleep 0.25  ##
  sleep 0.25  ## this block may be shortend by sleep 0.75
  sleep 0.25  ##
  play chord(:a3,:minor)
  sleep 0.25
  sleep 0.25
  sleep 0.25
  play chord(:a3,:minor)
  sleep 0.25
  sleep 0.25
  play chord(:a3,:minor)
  sleep 0.25
  sleep 0.25
  play chord(:a3,:minor)
  sleep 0.25
  sleep 0.25
  sleep 0.25
  sleep 0.25
  play chord(:a3,:minor)
  sleep 0.25
  sleep 0.25
end
### the following one is a function definition:
comment do
  define :hallo do
    puts "hallo"
  end
  ## and now you can call it by program the name of the function:
  hallo
end
## You can build up a function with parameter:
uncomment do
  define :hallo do | aName |
    puts "hallo " + aName
  end
  ## and now you can call it by program the name of the function:
  hallo "herbert"
  # also possible:
  hallo("herbert")
  ##| ## if one person would forget to pass a parameter (in our case a name) what happens?
  ##| # try: hallo => it would raise an error
  ##| # so: make a function with "standard" - value for the parameter:
  ##| define :hallo do | aName="noBody" |
  ##|   puts "hallo " + aName
  ##| end
  ##| ## and now you can call it without parameter or with parameter:
  ##| hallo
  ##| hallo "herbert"
  
end
###here is the code bar above tranfered to a function with chord as parameter:
comment do
  define :playPattern do | aChord |
    play aChord
    sleep 0.25  ##
    sleep 0.25  ## this block may be shortend by sleep 0.75
    sleep 0.25  ##
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
    sleep 0.25
    sleep 0.25
    play aChord
    sleep 0.25
    sleep 0.25
    
    
  end
  
  playPattern chord(:a3,:minor)
  
  ###you may also call it this way:
  
  playPattern(chord(:a3,:minor))
  
end
###an example: functions are useful for  understanding the code
comment do
  ###firstly: you dont understand, what happened:
  tchord = chord(:a4,:major).map{ |each| each + 0.3}
  ### cover it in a function, you may have an idea:
  define :shiftNotesOfChord do |aChord|
    chord(:a4,:major).map{ |each| each + 0.3}
  end
  play shiftNotesOfChord(chord(:a3,:major))
end




