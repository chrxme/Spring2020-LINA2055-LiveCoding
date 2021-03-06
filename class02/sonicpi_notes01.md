# Class 02 - Notes (pt.1)

## Notes / Synthesizers
### Remember:
- We can declare any number between 0-127 as the pitch with zero (0) being the lowest pitch and 127 as the highest
- We can also declare pitch by using traditional note names

### How to play a note 
#### Using Numbers
1. Type the command "play"
2. Hit space
3. Type a number between 0-127
4. Add sleep ___ below the command to finish the algorithm
```
play 60 
sleep 1 
```

#### Using Note Names
1. Type the command "play"
2. Hit space and type ":"
3. Declare a pitch name (ex. ":C" or ":G")
4. (optional) Add an octave number (ex. ":C3" or ":G5")
5. Add sleep ___ below the command to finish the algorithm
```
play :C2 
sleep 1 
play :G5
sleep 1
```

### How to play a chord
#### Using Numbers
Everything before "sleep 1" will play at the same time. This makes a chord.
```
play 60 
play 64
play 67
play 72
sleep 1
```

#### Using Note Names
Note: does not require sleep. See <a href="https://sonic-pi.net/tutorial.html#section-8-2" target="_blank">Section 8.2</a> for more details.
Example 1
```
play :C3
play :E3
play :G3

```
Sonic Pi also has built in chords for you to access. See <a href="https://sonic-pi.net/tutorial.html#section-8-2" target="_blank">Section 8.2</a> for more details.
```
play chord(:C3, :major)

```

### How to change a synthesizer
You can change a synthesizer by using the command "use_synth" and declaring a synthesizer afterwards.

Ex. use_synth :saw, use_synth :sine

In the example below, we are changing synthesizers between the first and second note.
```
use_synth :saw
play 60 
sleep 1
use_synth :sine
play 64
sleep 1
```

You can also change a synthezsizer by using the command "with_synth", declaring a synthesizer, and wrapping the code you'd like to effect.</br>

In the example below, we are changing synthesizers between the first and second note.
```
with_synth :tri do
  play 60 
  sleep 1
end
use_synth :sine do
  play 64
  sleep 1
end
```

## Samples
Sonic Pi has built in samples for us to play. These instructions are for how to play them.

### How to play a sample
1. Type the command "sample"
2. Hit space
3. Scroll down the list and pick a built-in sample to use
4. Add sleep ___ below the command to finish the algorithm
```
sample :bd_boom
sleep 1 
```
## Iterations / Loops / Live_Loops

In Sonic Pi, we can play blocks using "_.times do", "loop", and "live_loop"

### How to use a _.times do
1. Decide how many times you want your command to repeat
2. Write that number down
3. Add ".times do" after the number
4. Insert code that you want to repeat
5. End the algorithm by adding "end" at the bottom of the block

In this example, we are saying to play the sample four times
```
4.times do
  sample :elec_blip
  sleep 0.5
end
```

### How to use a live_loop
1. Type "live_loop"
2. Hit space and type a semi-colon (:)
3. Add a name after the semi-colon (ex. live_loop :one)
3. Insert code into block
5. End the algorithm by adding "end" at the bottom of the block

Remember:
- Loops are meant to repeat forever
- Using multiple live_loops means you'll have multiple blocks of code running at the same time
- Each live_loop has to have a different name

For more information on code structure and syntax, visit <a href="https://sonic-pi.net/tutorial.html#section-5" target="_blank">https://sonic-pi.net/tutorial.html#section-5</a>

In the example below, the bass drum is being played in a "live_loop :one".
```
live_loop :one do
  sample :bd_808
  sleep 1
end
```
## Parameters / Effects
In Sonic Pi, we can change the way a sound is played by adjusting paramaters. These include: amp, pan, attack, release, and rate.

### Amp
Amp is short for amplitude. Amplitude controls the volume. We can change the amplitude for notes and samples.

In this example, we are saying to play the note half at "0.5"
```
play 60, amp: 0.5
sleep 1
```

### Pan
We can say which speaker we want our sound to play out of using pan. We can adjust the panning for notes and samples. When the pan is -1, we are saying to play only out of the left speaker. When the pan is 1, we are saying to play only out of the right speaker. 

In this example, we are saying to play the first note out of the left speaker and then the second sample out of the right twice.
```
2.times do
  play 60, pan: -1
  sleep 1
  sample :bd_fat, pan: 1
  sleep 1
end
```
### Attack
We can control the beginning of a note or sample by adjusting the attack. 

In this example, we are telling our synthesizer to take two beats to fade in.
```
2.times do
    play 60,
      attack: 2 #how long it takes to fades in
    sleep 4
  end
  ```
  
### Release
We can control the end of a note by adjusting the release. 

In this example, we are telling our synthesizer to take two beats to fade out.
```
2.times do
  use_synth :beep
  play 60,
    release: 2 #how long it takes to fades out
  sleep 2
end
  ```  
  
For a more detailed explanation on playing with envelopes, see <a href="https://sonic-pi.net/tutorial.html#section-2-4" target="_blank">https://sonic-pi.net/tutorial.html#section-2-4</a>
  
### Rate
Rate is a parameter that works with samples.
The default setting for a samples rate to be played at is "1".

In this example, we are playing the same sample at different rates.
```
4.times do
  sample :elec_beep, rate: 1 # normal rate
  sleep 0.5
end
4.times do
  sample :elec_beep, rate: 2 # twice as fast
  sleep 0.25
end
2.times do
  sample :elec_beep, rate: 0.5 # half the speed
  sleep 0.5
end
```
In this example, we are playing the same sample regularly than backwards at the same speed.
```
1.times do
  sample :ambi_haunted_hum, rate: 1
  sleep sample_duration :ambi_haunted_hum
  sample :ambi_haunted_hum, rate: -1
  sleep sample_duration :ambi_haunted_hum
end
```
