written by wigglystuf - if you're a player reading this, it's our fault that we forgot to remove this...

================================================================================
= STYLE GUIDE ==================================================================
================================================================================

- FILE STRUCTURE ---------------------------------------------------------------

it should look something like this :
	
addons
assets
	sprites
	textures
	audio
levels
scenes               
	player
		player.tscn
		player.gd         < scripts go in the scene's directory
resources



- CODE STYLE -------------------------------------------------------------------

For GDScript, please refer to this :
https://docs.godotengine.org/en/4.4/tutorials/scripting/gdscript/gdscript_styleguide.html

For C#, refer to :
https://docs.godotengine.org/en/stable/tutorials/scripting/c_sharp/c_sharp_style_guide.html

- COMMENT RULES -

If applicable, write an initial by your comments, like so:
# I am a comment. - n
and if necessary, write 2 or more letters if your initials are too similar to someone else's.

Only use comments if the code is hard to read or if it's not clear at first glance what something is
meant to do.

If the function name doesn't tell you what it does, either name it better or comment above
what it's purpose is.

If applicable, comment above a function where and when it is called.
