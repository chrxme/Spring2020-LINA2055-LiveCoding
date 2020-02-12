# Hydra

## Modifying Sources/Effects (pt.2)

### Color, Operators, Modulators

#### [color](https://github.com/ojack/hydra/blob/master/docs/funcs.md#color)
```
// color - colorizes a texture
// .color(r, g, b)

osc(10).color(1,0,0).out() // red oscillation

noise(21).color(0,1,0).out() // green goo
```
#### [invert](https://github.com/ojack/hydra/blob/master/docs/funcs.md#invert)
```
shape(3).invert([0,1].fast(0.5)).out()

shape(3).invert([0,1].fast(0.5))
  .color(0,1,0) // color is applied only to white parts
  .out()
```
#### [blend](https://github.com/ojack/hydra/blob/master/docs/funcs.md#blend)
```
// blend
// .blend(texture/source, amount)

osc(10).blend(shape(4)).out()
```
#### [mask](https://github.com/ojack/hydra/blob/master/docs/funcs.md#mask)
```
// mask
// .mask(texture, reps, offset)
gradient(1).mask(shape(3)).out()

solid(2,0,0).mask(noise(3)).out()
```
#### [modulate](https://github.com/ojack/hydra/blob/master/docs/funcs.md#modulate)
```
// modulate - modulates one source with another's data
// .modulate(source, amount)

noise(21).modulate(osc(5)).out() //default modulation (0.1)

noise(21).modulate(osc(5), 1).out() // increased modulation
```
