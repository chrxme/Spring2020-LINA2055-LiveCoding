# Class 02 - Notes (pt.4)

## Using effects 

There are many built-in effects in Sonic Pi that can add a lot of character to your set.

Here are a few examples using a few effects.

### reverb
Adds some reverberation to the sound. 
Makes it sound more resonant, as if the sound is in a room.
```

live_loop :one do
  with_fx :reverb do
    sample :bd_fat
    sleep 1
  end
end
```


### gverb
Like reverb but BIGGER.

```
live_loop :one do
  with_fx :gverb do
    sample :bd_fat
    sleep 1
  end
end
```

### echo
Adds some echo
```
use_bpm 90

live_loop :one do
  with_fx :echo, mix: 0.1 do #effects have parameters that you can redefine for specificity
    sample :bd_fat
    sleep 1
    sample :drum_bass_hard
    sleep 1
  end
end
```
### slicer
Slices up a sound into segments. Can highly transform your sound.
```
use_bpm 100

live_loop :one do
  with_fx :slicer do
    play rrand_i(60, 72), release: 4
    sleep 4
  end
end
```

