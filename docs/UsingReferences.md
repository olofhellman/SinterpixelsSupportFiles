####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Scripting In Depth B: Scripts Menu](ScriptsMenu.md)

## Using References

In AppleScript, a reference is a way to refer to an object, but exactly which object is being referred to is not always clear.

if the phrase "document 1" is used in a script, that means "the front document", but if there is more than one document, the one that is the front document can change.

### Absolute index

"document 1" is an example of a reference by absolute index. When using absolute index values that are positive, it means "count from the beginning".  In a Sinterpixels document, shapes are drawn in the order from beginning to end.

It is possible to use a negative index, in which case that means "count from the end" So, "circle -1 of document -1"  means the last circle of the last document.

### Name

You can refer to most objects by name.  Using 'document "My Clock"' will always refer to the same document if there is only one document with that name.

Many objects don't usually have a name, but can have one.  For example, you are free to assign a name to a shape if you'd like, and once you do, it can be used to reference the shape by name:

```
tell application "SinterPixels"
	set the name of circle 2 to "Eric"
	set the radius of shape "Eric" to 10
end tell
```


### Id

You can also refer to most objects by id.  Run this script to find out the document ids you can use:

```
tell application "SinterPixels"
	get id of every document
end tell
```

if this script returned {3, 11}  that means there are two documents open, and you could use either   
```
  document id 3
```
or
```
  document id 11
```
as a reference. You can refer to multiple objects this way.  Running this script in the situation above

```
  name of document id {3, 11)  
```
should return a list of the names of the two documents.  Some objects, most notably pixels, are specified by a pair of numbers, their column and row.  So,

```
  pixel id {{6, 6}, {6, 5}, {5, 6}, {5, 5}} of canvas of document 1 
```

refers to 4 pixels close to the top left of the canvas.

WARNING: The id of each object might change if you close a document and reopen it.  

### Every

"every" is used to create another kind of reference. One can use "every" as a way to apply a command to may objects at the same time:

```
tell application "SinterPixels"
	set the radius of every circle of every document to 12
end tell
``` 

### Some

"some" means to pick a random object in a collection:

```
tell application "SinterPixels"
	delete some shape of doument 1
end tell
``` 

### Whose

**whose** is a way to apply a test to filter a collection of objects. For example,

```
every circle of document 1 whose radius in less than 12
``` 
is valid.



#### next topic: [Scripting In Depth D: Communicating with Other Apps](ScriptingOtherApps.md)
