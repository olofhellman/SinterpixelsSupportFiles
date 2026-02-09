#### previous topic: [Scripting In Depth B: Scripts Menu](ScriptsMenu.md)

## Using References

In AppleScript, a reference is a way to refer to an object, but exactly which object is being referred to is not always clear.

if the phrase "document 1" is used in a script, that means "the front document", but if there is more than one document, the one that is the front document can change.

"document 1" is an example of a reference by absolute index.  There are other ways to refer to objects.

For example, you can refer to a document by name.  Using 'document "My Clock"' will always refer to the same document if there is only one document with that name.

You can also refer to a document by id.  Run this script to find out the document ids you can use:

```
tell application "Sinterpixels"
	get id of every document
end tell
```

if this script returned {3, 11}  that means there are two documents open, and you could use either.  The id of each object will change if you close a document and reopen it.
```
  document id 3
```
or
```
  document id 11
```
as a reference.

"every document" is another kind of reference. One can use "every" as a way to apply a command to may objects at the same time:


```
tell application "Sinterpixels"
	set the radius of every circle of document to 12
end tell
``` 



It is possible to apply a test as well.  For example,

```
every circle whose radius in less than 12
``` 
is valid.

Using negative indices is also valid.  For example, 


```
radius of circle -2 of document -1
``` 

gets the mass of the second to last circle of the last document.


#### next topic: [Scripting In Depth D: Communicating with Other Apps](ScriptingOtherApps.md)
