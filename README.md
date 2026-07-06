# Style Guides

This repository is a compilation of style guides for all the various
 types of coding and documents created as part of my other repositories,
 or other outside work.

The following rules will apply to all style guides:

- All documents will be written in Markdown for ease of viewing and editing
  - They will, as a result, be compliant with the Markdown Style Guide
- All sources will be linked to permit tracability and future updates
- To avoid duplication of effort, only note changes from the reference guides
- Guides will be linked from this document for ease of navigation
- When reasonable, editing software should be configured to support the style
  - Notes on this will be included when relevant
- As a general rule, if you're not willing to refactor the code entirely, prefer
  to match the existing style when it deviates from the style guide
- Line lengths should be hard capped at 120 char, with a soft cap at 80 char
  - Make a best effort
- In general, prefer that constants should be named in all caps, LIKE_THIS
- In generak, prefer that functions should be named in a "verby" way
  - Those verbs should suggest what the function will do, ie ReturnIPValidity,
  or GetPageList
- In general, variable names should suggest their usage, without restorting to
  specifying type
  - Prefer Is_Connected over Connection_Boolean, Timeout_Sec over Timeout
- When possible, use comments starting with `TODO:` to indicate future work
  - TODOs should include what needs to be fixed, and what is blocking or setting
  timeline
  - Remember that a reader lacks context and provide what you can
  - Example cases would be bugs, code that isn't optimized, things that are
    working but want to be improved to be more robust or scalable
- Writing should be self-documenting to the degree that is reasonable
  - This should be achievable with good naming and structural choices
- If there is ever a concern that something is unclear, prefer to leave comments
- Always leave comments if you've done something "clever" that may not be obvious
  to a reader
- Assume that future readers, including your future self, are knowledgeable on
  how to code in the language in use,
  but lack context of what you are doing and why, and document appropriately.

## Style Guide Directory

- [HTML/CSS](HTML-CSS.md)
- [Jinja](Jinja.md)
- [JSON](JSON.md)
- [Lua](Lua.md)
- [Markdown](Markdown.md)
- [Python](Python.md)
- [Shell](Shell.md)
- [TOML](TOML.md)
- [YAML](Yaml.md)

## Progress in updating existing codebases

- influx_nut: Exempt (archived fork)
- Homelab_v1: Not compliant: Markdown, JSON, Python, Shell
- Homelab_v2: Not compliant: Markdown, TOML, YAML/Ansible, Shell
- Q-Sys Development Environment: Compliant
