####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Making a Mirror Image](ReflectVerb.md)    next topic: [Scripting In Depth A: Script Editor](ScriptEditor.md)

## Creating a document via script

This is the scripting interface version of making a new document:

tell app "SinterPixels"
    make new document with properties {name: "Doodles", height: 600, width: 800}
end

One can also use **dimensions** as shorthand for width and height:

tell app "SinterPixels"
    make new document with properties {name: "Doodles", dimensions: {600,800} }
end

To reverse that operation and close a document, use the verb **close**:

tell app "SinterPixels"
    close document "Doodles"
end


## Closing a document via script


**close** has an optional boolean parameter **saving**.  To make sure to save the changes that are part of the document, use **with saving** or to discard any changes, use **without saving**

tell app "SinterPixels"
    close document "Doodles" without saving
end

Using **without saving** ensures there will be no user interaction requiredas the document closes.

Using **with saving** might require user interaction if the document doesn't already have a file specified.  For example, if you make a new document and haven't saved it yet, **with saving**  will put up a dialog asking where to save.

see the section [Saving a Document](SavingADocument.md) for more details on saving a document and the limitations around specifying a save location.


#### previous topic: [Making a Mirror Image](ReflectVerb.md)    next topic: [Scripting In Depth A: Script Editor](ScriptEditor.md)
