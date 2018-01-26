
use_bpm 116

# bar 1
puts "bar 1"
play :b2
sleep 1.5
play :fs2
sleep 0.5
play :a2
sleep 0.75
play :fs2
sleep 0.75
play :a2
sleep 0.5

# bar 2
puts "bar 2"
sleep 0.5
play :b2
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

#bar 3 same as bar 1
puts "bar 3"
play :b2
sleep 1.5
play :fs2
sleep 0.5
play :a2
sleep 0.75
play :fs2
sleep 0.75
play :a2
sleep 0.5

# bar 4 same as bar 2 with last note = f
puts "bar 4"
sleep 0.5
play :b2
sleep 0.5
sleep 0.5
play :fs2
sleep 0.5
play :a2
sleep 0.75
play :fs2
sleep 0.75
play :f2
sleep 0.5

# bar 5
puts "bar 5"
play :e2
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

#bar 6
puts "bar 6"
play :g2
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