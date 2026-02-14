####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Blend Modes](SinterpixelsColors2.md)  next topic: [Pixels Part 2](SinterpixelsPixels2.md)

##  Pixels Part One: IDs and positions

Every document starts with a canvas, and every canvas has a background of pixels. If a new document is created, the background of pixels is transparent, but if a document is created from a PNG file, mast of the pixels will probably be filled in.

Unlike polygons and circles, pixels don't have a position, although we can get their coordinates.  Instead, pixels are part of the canvas, and they can be accessed by id, or by index in their container.

So, both of these reference statements will work:

```
    pixel 40 of canvas of document 1
```

```
    pixel 40 of row 1 of canvas of document 1
```

But, these may not be the same.  If the width of the canvas is more than 40 pixels, "pixel 40 of canvas" will mean the "pixel 40 of row 1 of canvas", but if the canvas has a width of 25, "pixel id 40 of canvas" will mean "pixel 15 of row 2 of canvas".

Pixels can also be addressed by an id as a list of 2 items:

```
    pixel id {25,2} of canvas of document 1
```

will refer to the "pixel 25 of row 2", no matter how wide the canvas is.  Of course, if the canvas is narrower than 25 pixels, "pixel id {25,2}" will not exist.

### Pixel ids and pixel coordinates are completely different

Indexing in AppleScript with positive integers always means count from the front.  So, "Pixel id {1,1}" means the first pixel of the first row.  AppleScript indexing can also use negative numbers, in which case they mean 'relative to the back'.  So, "pixel id {-1,-1}"  means "the last pixel of the last row".  For a canvas with a width of 640 and a height of 480, "pixel id {640,480} means the exact same pixel as "pixel id {-1,-1}"

And, to make things slightly more complicated, images are usually indexed with the first row at the top, and the last row at the bottom.  This is the opposite of how we measure positions of shapes, where a bigger y coordinate means further up, and a lesser y coordinate means further down.

Each pixel does have x and y coordinates, which is the pixel position.  So, if we have a canvas of with a width of 640 and a height of 480, and we run this script:

```
tell app "Sinterpixels"
     get position of pixel id {1,1} of canvas of document 1
end tell
```

the result should be 

```
{x coordinate: -319.5, y coordinate: 239.5}
```

try for yourself:
```
tell app "Sinterpixels"
    set myDoc to make new document with properties {height: 480, width: 640}
    get position of pixel id {1,1} of canvas of myDoc
end tell
```

Unlike for circles and polygons, you can't set the position of a pixel.  Its position is fixed because it is part of the canvas, part of a regular grid that doesn't change.

In Pixels part 2, we'll use these pixel specifiers to get the colors of pixels. 

#### previous topic: [Blend Modes](SinterpixelsColors2.md)  next topic: [Pixels Part 2](SinterpixelsPixels2.md)
