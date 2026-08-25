# Shell Style Guide

Shell script is sometimes the most efficient manner to handle a given problem.
When that is the case, use bash, and keep it simple,
 if it needs to get complicated it should stop being a shell script.

- [Shell Style Guide](#shell-style-guide)
  - [Reference Guide(s)](#reference-guides)
  - [VSCode Settings and Tooling](#vscode-settings-and-tooling)
  - [Alterations](#alterations)
  - [See also](#see-also)

Except as noted in this document, the [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
 should be treated as authoritative for shell code.

## Deviations from Global Rules

While global rules prefer descriptive verby names like ReturnIPValidity,
 Shell functions should favor concise, lowercase, underscore-separated utility
 names (e.g., check_ip) to align with native POSIX CLI aesthetics.

## Reference Guide(s)

[Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html)

## VSCode Settings and Tooling

For Bash I am using 2 extensions, and 1 external tool.
The shell-format extension from foxundermoon handles formatting and spacing.
The ShellCheck extension from Timon Wong handles linting and syntax consistency.
It relies on the shellcheck tool, installed via homebrew.

## Alterations

None at this time.

## See also
