####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Scripting In Depth C: References](UsingReferences.md)   next topic: [Examples Catalog](AllExamples.md)

## Scripting other apps

An AppleScript can be used to share data between different applications.  For example, you might have data in [Excel](https://www.microsoft.com/excel) that you want to use as the source data for generating an image in SinterPixels. 

Or, you may want to take images generated with SinterPixels and process them with a different app, like [RetroBatch](https://www.flyingmeat.com/retrobatch)


Here's a script that opens the contents of a SinterPixels document in [Acorn](https://www.flyingmeat.com/acorn)

```
tell application "SinterPixels"
	set jpegData to JPEG data of document 1
end tell

set the clipboard to jpegData

tell application "Acorn"
	make new document from Clipboard
end tell
```

By the way, Acorn is great app and totally worth it. See [Acorn's scripting examples](https://flyingmeat.com/acorn/docs/example_applescript_and_javascript_scripts.html) for a variety of features like image resizing, applying filters, and changing file formats.

#### [Scripting In Depth C: References](UsingReferences.md)   next topic: [Examples Catalog](AllExamples.md)
