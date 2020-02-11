# Hydra

## Modifying Sources/Effects (pt.1)

### Geometry/Movement

#### [repeat](https://github.com/ojack/hydra/blob/master/docs/funcs.md#repeat)
```
//repeat
// .repeat(repeatX, repeatY, offsetX, offsetY)

shape(3).repeat(3).out() // repeats triangle - 3 x 3

shape(3).repeat(1,3).out() // three triangles across the Y axis

shape(3).repeat(3,1).out() // three triangles across the X axis

shape(3).repeat(3,3).out() // repeats triangle - 3 x 3

shape(3).repeat(3,3, 0.5, 0.2).out() // offsets the X and Y position, effects how it's "tiled"
```

#### [scale](https://github.com/ojack/hydra/blob/master/docs/funcs.md#scale)
```
// scale
// .scale(size, xMult, yMult)

shape(4).scale(0.1).out() // small rectangle

shape(4).scale([1,2,0.5,2]).out() // alternating between different values for scale
// More on parameter sequences at - https://github.com/ojack/hydra/blob/master/docs/funcs.md#parameter-sequences
```

#### [rotate](https://github.com/ojack/hydra/blob/master/docs/funcs.md#rotate)
```
// rotate
// .rotate(angle, speed)

shape(3).rotate(0.5).out() // angled triangle

shape(3).rotate(0, 0.1).out() // spinning triangle
```

#### [scrollX](https://github.com/ojack/hydra/blob/master/docs/funcs.md#scrollX)
```
// scrollX
// .scrollX(scrollX[offsets the "tiling"], speed)

shape(3).scrollX(0, 0.5).out() // fast to the left

shape(3).scrollX(0, -0.1).out() // slow to the right

voronoi(2, 0.1, 0.1).scrollX(0, 0.01).out() // super slow to the left
```

#### [scrollY](https://github.com/ojack/hydra/blob/master/docs/funcs.md#scrollY)
```
// scrollY
// .scrollY(scrollY[offsets the "tiling"], speed)

shape(4).scrollY(0, 0.5).out() // fast and up

shape(4).scrollY(0, -0.5).out() // fast and down
```
#### [pixelate](https://github.com/ojack/hydra/blob/master/docs/funcs.md#pixelate)
```
// pixelate - pixelates an image with segements
// .pixelate(x,y)

osc(10).pixelate(20).out()

noise(1).pixelate(30).out()
```
#### [kaleid](https://github.com/ojack/hydra/blob/master/docs/funcs.md#kaleid)
```
// kaleid - like a kaleidescope
// .kaleid(nSides[the # of segments])

osc(20, -0.1, 1).kaleid(4).out()

noise(3).kaleid(3).out()
```
