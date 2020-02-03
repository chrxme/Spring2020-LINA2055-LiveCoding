## This example combines the MeHackit chord progression example (https://sonic-pi.mehackit.org/exercises/en/04-generate-sounds/04-chord-progressions.html)
## With the chord progression from "Somewhere Over the Rainbow" by Israel Kamakawaiwo'ole (https://tabs.ultimate-guitar.com/tab/israel-kamakawiwoole/over-the-rainbow-ukulele-1486181)

use_bpm 120

chords = [(chord :C,  :major), (chord :E, :min), (chord :F, :major),(chord :G, :major), (chord :A, :minor)].ring
c = chords[0] # take the first chord of the ring and save it to a variable
# this is going to be used in all the live_loops. It will be ticked by the :bass loop

live_loop :melody do
  stop
  use_synth :pretty_bell
  r = [4, 2, 2, 1].choose
  play c.choose, release: r + 1
  sleep r
end

live_loop :keys do
  stop
  use_synth :pluck
  play c
  sleep 1
end

live_loop :bass do
  use_synth :fm
  use_octave -2
  with_sample_defaults amp: 4 do
    3.times do
      play c[0] + 12 # play the first note of the chord
      sleep 1
    end
    play c[2] + 12 # play the third note of the chord
    sleep 0.5
    play c[1] + 12 # # play the second note of the chord
    sleep 0.5
    ## The code below controls which chord the song moves onto after each loop from :bass
    c = (ring chords[0], chords[1], chords[2], chords[0], chords[2], chords[0], chords[3], chords[4], chords[2]).tick
    ## Cmajor = 0, emin=1, Fmajor = 2, Gmajor = 3, amin = 4
  end
end