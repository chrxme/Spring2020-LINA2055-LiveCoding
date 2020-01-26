# Class 02 - Notes (pt.3)

## Working with randomness

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
Choose chooses a random value from a list.

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
