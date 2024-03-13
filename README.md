# processing-shower
a place to hold some processing code for an interactive video art installation

This repo is holds processing code:

It is a processing version of 

https://github.com/greggelong/genuary24/tree/main/day1

Which may be installed at a hotel

processing ArrayLists work a bit strangely so be sure to see:

https://processing.org/reference/ArrayList.html

This video tutorial can be of some help:

https://processing.org/tutorials/video/#live-video

and this piece uses a particle system see:

https://processing.org/examples/simpleparticlesystem.html

To make mirrors I have used both the pixel array and get function

I havent seen much differnece in speed so in the latest I am using the simpler get() function to get the color

You can also have some freedom to deal with the video feed

the final speed of the visualization may depend on the speed of the computer and camera the video is runnin on

particleShowerVideo2 I have scaled the velocity like the javascript version the drops fall faster

particleShowerVideo  the velocity is not scaled and moves slower

