// Modulators
// For a full list/description of modulators in Hydra, see: https://github.com/ojack/hydra/blob/master/docs/funcs.md#modulators

// In video synthesis, you can effect a oscillator/signals behavior with other signals
// Hydra has a series of functions meant to mimic that process


osc(10).out(o0) // vertical oscillations

osc(30).rotate(1.55).out(o1) // horizontal oscillations

src(o0).modulate(o1).out(o2) // s0 is being modulated by s1

src(o1).modulate(o0).out(o2) // s1 is being modulated by s0

render(o2)


///////////////////

///.modulateKaleid vs .kaleid

gradient(1)
  .modulateKaleid(osc(10), [2,3,4].fast(0.5))
  .out(o0)


gradient(1)
  .kaleid([2,3,4].fast(0.5))
  .out(o0)

render(o0)

///////////////////

//.modulateRepeat

shape(3)
  .repeat(4,4)
  .out(o0)

  shape(3)
    .repeat(4,4)
    .modulate(osc(5))
    .out(o0)

  shape(3)
    .modulateRepeat(osc(5), 4,4)
    .out(o0)

render(o0)
