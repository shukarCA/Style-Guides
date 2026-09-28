# Lua Style Guide

My primary Lua usage is for work on Q-Sys projects.
As such, their style suggestions will be the dominant force.

As their suggestions are sparse, I will also be noting down my own rules here.

- [Lua Style Guide](#lua-style-guide)
  - [Reference Guide(s)](#reference-guides)
  - [General Notes and Guidelines](#general-notes-and-guidelines)
    - [Naming](#naming)
    - [Formatting](#formatting)
    - [Comments](#comments)
    - [Structure of Files](#structure-of-files)
    - [Conventions](#conventions)
  - [VSCode Settings and Tooling](#vscode-settings-and-tooling)
  - [Alterations](#alterations)
  - [See also](#see-also)

## Reference Guide(s)

- [Q-Sys Lua Style Guide](https://help.qsys.com/DeveloperHelp/#Standards_Definitions/Style_Guide.htm)
- [Q-Sys Reserved Controls](https://help.qsys.com/DeveloperHelp/#Standards_Definitions/Reserved_Control_Names.htm)
- [Q-Sys Reserve Functions](https://help.qsys.com/DeveloperHelp/#Standards_Definitions/Reserved_Functions.htm)

## General Notes and Guidelines

### Naming

Plugins have a `main` and a `develop` branch, this will mean they should have
2 GUIDs, and variants of Name and Version for each branch,
so that a system can have both installed.

Controls and global objects should be named with PascalCase or UpperCamelCase.

Local variables and objects use camelCase or lowerCamelCase.

Repositories, and Plugins, use PascalCase.

### Formatting

One statement per line, one assignemnt per statement.

Indentation is 2 spaces, and there should be spaces after control structures
and operators (if, while, etc.) and commas.

Spaces should also be used as needed for readability.

### Comments

General comments go above the structure to which they apply,
e.g. "This function does this".

Granular comments may go in line,
e.g. "This conditional checks abc for xyz".

Sections of code are denoted using single line comments surrounded by 3 asterisk
e.g. `-- ***Section Header***`

Granular comments should not be aligned vertically, but instead left with a
single space after the line before the comment.

```lua
-- Good
code goes here -- Comment goes here

-- Bad
this is the first line of code          -- this is a comment
this is the second line of code         -- and an aligned comment
```

### Structure of Files

I prefer to keep a comment at the top with attribution and
an explanation of the purpose of the module/plugin below.
This is also where I place `TODO:`s in general, with specific items in line as needed.

This is followed by the PluginInfo section, then Constants, Variables,
and Functions needed in DesignTime.
The last personal addition are the Color, Font, and Style defintions that
are part of my general template.

The next sections contain the "Compulsory" functions Q-Sys assumes for a plugin.

- GetColor()
- GetPrettyName()
- GetPages()
- GetProperties()
- RectifyProperties()
- GetControls()
- GetControlLayout()
- GetComponents()
- GetPins()
- GetWiring()

To this I include the BuildPageNames() helper function I use alongside GetPages(),
as it is tied heavily into that function so keeping the definitions
together makes maintenance easier.
I call it within GetPages(), GetControls(), and GetControlLayout().
This helps ensure any function that needs to be aware of the current page is.

Lastly is the Runtime potion, contained within the `if Controls then` conditional.

Declarations of requirements go at the beginning.
Followed by definitions of non-function items, constants, variables, tables,
arrays, and timers.

This is followed by what I term "Utility Functions", which are my
general purpose functions that are not specific to the plugin being built.
Then functions that are specific to the code in question.
These are usually split based on what aspect of the project they are for.
Core Functions will always be present,
TCP, UDP, and Serial communication functions are split into their own sections,
with other sections added based on project needs for organization.
The last function declaration is always the Init() function, which is run at
startup to initialize the state of the code and ensure everything will start
from a good condition.
Init is then called using a Timer.CallAfter with a delay of 1, to provide the
system a small amount of time to establish anything we might need as existing first.

This is followed by EventHandlers, which are split up similarly to Functions.
Callbacks for TCP, UDP, and Serial always go at the end in their own sections.

Lastly, I reserve a section for Test Code that is rarely used,
but I still prefer to have.

### Conventions

I prefer to keep trailing field delimeters in my arrays and tables.

QSC suggests some names for Controls that are common among plugins,
I use them when appropriate.

- Status
- IPAddress
- MACAddress
- Username
- Password
- DeviceName
- SerialNumber
- DeviceFirmware

I prefer to minimize what directly prints to the Debug Window using a
PrintDebugMsg() command.
This way, I can control the verbosity of printouts and keep the readout clean,
only printing major warnings and errors,
but if additional information is needed it can be available by changing a variable/property.

When user input could cause errors, even if it has passed validation, use a pcall().
This permits a try-catch option to determine if the call will work or not,
and handle the failure case gracefully.
Examples would be when opening sockets or Serial ports.

## VSCode Settings and Tooling

For Lua, and Q-Sys in specific, I am using 3 extensions in VSCode.

For the general Lua Language Server I'm using Lua by sumneko.
For formatting of code I am using StyLua from JohnnyMorganz.
For Q-Sys specific IntelliSense I am using Better Lua for Q-SYS Plugins from IntegratorBlocks.

Q-Sys uses Lua version 5.3 and that is therefore the chosen targetVersion.
Settings for Lua are stored in .luarc.json and .vscodetypes/qsys_defs.lua
in the project directory.

## Alterations

I choose to deviate from QSC's guidelines by placing Init() with functions
instead of at the end of the file.

## See also
