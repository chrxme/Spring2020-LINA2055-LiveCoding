// Audioreactivity
/// Hydra can access your microphone
/// For Mac Users: You might need to allow Atom to have access to your microphone.
/// See this page for details: https://support.apple.com/guide/mac-help/control-access-to-your-microphone-on-mac-mchla1b1e1fe/mac
// Bins are the amount of segments you can divide your audio input into
/// (ex. 5 bins = 5 different "levels" that you can access data for)

/// Still very experimental - you might need to check your values and adjust on the fly to get a good interaction

a.show() // tells us to show the UI for the bins

a.setBins(5) //set number of bins ex.0-5

a.fft[0] //access bin [0] - low notes/bass
a.fft[1]
a.fft[2]
a.fft[3]
a.fft[4] //access bin [4] - high notes/cymbals

a.setSmooth(0.92) // adjusts sensitivity to sound


shape(3)
  .rotate(0, () => (a.fft[4]/4) )
  .scale( () => (a.fft[4]))
  .mult(gradient(1))
  .repeat(2,2)
  //.add(shape(2)
  //  .scale( () => (a.fft[0]/2))
  //  .color(1,0,() => (a.fft[0]*2.5) )
  //)
  .scrollX(0,0.1)
  .out(o0)

render(o0)
