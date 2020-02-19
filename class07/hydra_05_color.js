//brightness

osc(10)
  .brightness(() => Math.sin(time/2))
  .out(o0)


//contrast

gradient(1)
  .contrast(() => Math.sin(time*2))
  .out(o0)

//color

osc(20)
  .color([1,0,1],[1,1,0],[0,1,1])
  .out(o0)

//colorama
// Shifts HSV (hue, saturation, value)

gradient(3)
  .mask(shape(3))
  .colorama(2)
  .out(o0)

//invert
//inverts colors

gradient(3)
  .mask(shape(3)
  .invert()
)
  .colorama(2)
  .out(o0)

//saturate

s0.initCam() // Initializes the webcam as a source - saves to buffer s0

src(s0)
  .saturate(4)
  .out(o0)

//thresh
// .thresh(threshold, tolerance
)
s0.initCam() // Initializes the webcam as a source - saves to buffer s0

src(s0)
  .thresh(0.5)
  .color(1,0,0.5) // pop-punk pink filter
  .out(o0)

//luma
// .luma(threshold, tolerance)

src(s0)
  .luma(0.6,0.6) // grey filter
  .out(o0)

//posterize
// .posterize(bins, gamma)

src(s0)
  .posterize(6).out(o0)
