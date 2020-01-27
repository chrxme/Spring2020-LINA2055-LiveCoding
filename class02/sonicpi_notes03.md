# Class 02 - Notes (pt.3)

## Working with randomness / lists

Working with random input can add variety and interest to your set.

### rrand
rrand gives you a random value within a certain range. You'll need to declare the minimum and maximum of your range.

In the example below, we are saying to play the sample with an amplitude between 0.25 and 0.4 and a rate between 0.9 and 1.1.
```
live_loop :one do
  sample :drum_cymbal_closed,
    amp: rrand(0.25, 0.4),
    rate: rrand(0.9, 1.1)
  sleep 0.25
end
```
### rrand_i
rrand_i gives you a random value between a certain range but only outputs integers (aka whole numbers.)

In the example below, we are saying to play random integers between 60 through 72.
```
12.times do
  play rrand_i(60, 72) 
  sleep 0.25
end
```
### choose 
Choose chooses a random value from a list (also known as an array).

In this example below, in live_loop :one, Sonic Pi chooses a pitch belonging to an eminor chord with a range of two octaves. In live_loop :two, the loop is choosing between "sleeping" for 0.25 and 0.5 beats.
```
live_loop :one do
  use_synth :tb303
  play choose(chord(:e2, :minor, num_octaves: 2)), release: rrand(0.1, 0.3)
  sleep 0.25
end

live_loop :two do
  sample :drum_cymbal_closed
  sleep [0.25, 0.5].choose
end
```
We can also define our our own lists for Sonic Pi to choose from using variables

Example 1
```
live_loop :one do
  
  notes = (scale :f2, :egyptian, num_octaves: 2) #declaring list here
  use_synth :tb303
  play notes.choose, release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end

live_loop :two do
  sample :drum_cymbal_closed
  sleep [0.25, 0.5].choose
end
```
Example 2
```
notes = [60, 61, 64, 65, 67, 68, 70, 72]
#C Major Phyrigan Scale - popular in music from the Middle East and South Asia

live_loop :one do
  cue :beat
  use_synth :tri
  play notes.choose
  sleep 1
  play notes.choose
  sleep 1
end

live_loop :two do
  sync :beat
  use_synth :blade
  2.times do
    play notes.choose + 12
    sleep 0.5
  end
end
```

### lists - using tick/creating rings
In Sonic Pi, you can create rings - which is a list that we cycle through.
Here is an example of a ring cycle through different synthesizers everytime the loop restarts.
```
live_loop :one do
  use_synth (ring :blade, :tri, :prophet, :pretty_bell).tick
  play rrand_i(60, 72)
  sleep 0.5
end
```
If you are working with one more than one ring in a live_loop, you'll need to give each ring it's own unique name.
```
live_loop :one do
  use_synth (ring :blade, :tri, :prophet, :pretty_bell).tick(:a)
  play rrand_i(60, 72)
  sleep (ring 0.25, 0.25, 0.5).tick(:b)
end
```
