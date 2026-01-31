#### previous topic: [Scripting In Depth B: Scripts Menu](ScriptsMenu.md)

## Using References

In AppleScript, a reference is a way to refer to an object, but exactly which object is being referred to is not always clear.

if the phrase "document 1" is used in a script, that means "the front document", but if there is more than one document, the one that is the front document can change.

"document 1" is an example of a reference by absolute index.  There are other ways to refer to objects.

For example, you can refer to a document by name.  Using 'document "FeCr"' will always refer to the same document if there is only one document with that name.

You can also refer to a document by id.  Run this script to find out the document ids you can use:

```
tell application "Sinterapt"
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
as a reference.

"every document" is another kind of reference. 

It is possible to apply a test as well.  For example,

```
every mass range whose lower bound is less than 40
``` 
is valid.

Using negative indices is also valid.  For example, 


```
mass of ion -2 of document -1
``` 

gets the mass of the second to last ion of the last document.


#### next topic: [Scripting In Depth D: Communicating with Other Apps](ScriptingOtherApps.md)
