# Hydra

## Bonus Sources

### Webcam as a source
You can use your webcam just like any other source to manipulate.
```
// Webcam as a Source

s0.initCam() // Initializes the webcam as a source - saves to buffer s0

src(s0).out() // render source buffer s0

src(s0).color(1,0,1).out() // fushia filter with webcam image
```
### Desktop capture as a source
You can use your webcam just like any other source to manipulate.
```
// Desktop capture as a Source

s0.initScreen(0) // change value (0) to render different screens as input

src(s0)
  .modulate(noise(40).pixelate(2), 0.1)
  .out()
```
