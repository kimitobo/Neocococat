# Neocococat
Board modification of 8Bitmixtape NEO synthesizer

![alt text](https://ia601505.us.archive.org/1/items/neocococat_201704/IMG_9661.JPG "Logo Title Text 1")

Neococo Kimitobo cat is a board variation from the 8Bitmixtapeneo circuit and board. It was designed in Taipei, Dimensionplus April 2017, after Marc Dusseillers 8bitmixtapeneo DIY pcb etching and (smd) soldering workshop. The circuit is almost identical to 8Bitmixtapeneo, differences being: 1) only one potentiometer (place for the second pot with the resistors are included on the top of the board) and 2) two NEOpixels instead of 8 as the cat's eyes, both with the larger NEOpixel footpring. Therefore, all the 8Bitmixtapeneo code should be compatible. I hope I have a chance to contribute also some code derived from the vast collection of fantastic examples at somepoint. Feel free to copy, remix, do-what-ever-you-want with the board design. Open Source Hardware and coconuts :)

# Process in nutshell

## Drawing the circuit in Inkscape

I started with Marc's DIYpcb workshop GärLämpli design assets, which are the used components with their footprings, scaled up to 400% for manual cut&paste circuit design with paper and pen. Instead of drawing by hand, I layed the components in 1:1 to inkscape and started to layout the parts according to the rough idea of the pot as cat's nose, NEOpixels as her eyes, ATtiny as the "brains" and rest around as compact circuit as possible. After the components were roughly in place, I draw the logic lines (nets?) with colour-coded lines for Vcc, Gnd, and signals. After this, I started to draw the copper paths with bezier curves, keeping it organic and trying to include some features of cat's head. But it got pretty corwded and eventually the confined small space dicated the freestylin' quite a bit.

## PCB etching

The copper design was printed with an office laser printer according to what we learned in Marc's workshop and cut out the paper, oiled it (for more translucency in the following exposure), cut piece of ready-to-expose copper PCB, exposed it with Marc's DIY blue-led exposing-station (mirror the image!), spoiled (overexposed) the first trial, doubled the oily paper for better black, exposed for 45sec (do a test exposure) , developed the board in 30 degree celcius Natrium... until the unexposed part got fixed (rub gently the exposed parts with some gloves) and finally etched the board in +50 degrees celcius Natriumperoxide for half an hour or so until the exposed copper was dissolved (keep it hot, we used larger hot water bath for the etching tray, speeds the process a lot). Finally, the greenish layer of protective coating over the copper design was rubbed away with acetone and the remainings of some dust and garbage copper residue was sanded away.

This was a learning excercise for DIY board making more than a product design excercise. The shape of the cat's head is a small tribute to my previous visit to Taipei & Dimensionplus for Lemonster workshop in - - -  Big thanks for Marc Dusseiller for very inspiring facilitation and geeking company, and for Escher Tsai and whole Dimensionplus team for heartwarming hosting and hospitality.

## Soldering

Solder the small SMD components first. Especially audio plugs the IC socket and the Pot are so close to resistor and capacitor pads that they should all be in place before soldering the larger components. The (one-sided) board is stable to tape on the table before soldering the power socket and pot. I recommend two intermediate tests while in between the soldering: power circuit + audio code upload and button check.
