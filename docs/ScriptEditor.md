####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Exporting Movies](Movies.md)  next topic: [Scripting In Depth B: Scripts Menu](ScriptsMenu.md)

## The Script Editor

Script Editor is a fairly simple app, but there are some features which are useful to know about:


### Recording

Sinterpixels supports a feature called AppleScript recording, but there is currently an issue where trying to record a script breaks almost everything in the application.

So, please do not open a ScriptEditor document press the record button.  I am working to resolve this issue.


### App Dictionaries

The terminology understood by each application is presented in its scripting dictionary.  To open an app's dictionary, choose "Open Dictionary..." from Script Editor's File menu, and select the app you want to inspect.  Sinterpixels's dictionary looks like this

![image](../images/ScriptingDictionary.png "The Sinterpixels scripting dictionary open in Script Editor")

Most helpfully, the scripting dictionary documents the various properties available for each object type, and defines the various parameters available for each command.

### The Events Panel

By default, Script Editor shows the result of the last command in the lower part of its window.  However, one can have it display a more comprehensive record of its communications with the app.  Select the "Log" button on the lower bar -- its shown here in this picture:

![image](../images/ScriptEditorLogButton.png "The Log Button in Script Editor")

Then, select the "Replies" button to see the full transaction between Script Editor and the app.  The lower panel should show each command it sent to the app, and each reply it received.


#### previous topic: [Exporting Movies](Movies.md)  next topic: [Scripting In Depth B: Scripts Menu](ScriptsMenu.md)
