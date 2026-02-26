####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Exporting Movies](Movies.md)  next topic: [Scripting In Depth A: Script Editor](ScriptEditor.md)

## Opening a File via Script

(support for this feature is in progress)

Because macOS has strict access controls on what files an app is allowed to access, opening a file may be less straightforward than you may think.

To work around this limitation, SinterPixels works with a special folder that it is always allowed access to.  This is called the **library** and it is a folder that lives next to the scripts folder in the application support folder.

A file in this special folder can be opened with 

tell application "SinterPixels"
    open file "My Filename" of the library
end tell
 

#### previous topic: [Exporting Movies](Movies.md)  next topic: [Scripting In Depth A: Script Editor](ScriptEditor.md)
