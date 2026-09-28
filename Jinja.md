# Jinja Style Guide

Jinja is a format for templating text based documents.
It is used heavily in my Ansible workflows.

- [Jinja Style Guide](#jinja-style-guide)
  - [Reference Guide(s)](#reference-guides)
  - [VSCode Settings and Tooling](#vscode-settings-and-tooling)
  - [Alterations](#alterations)
  - [See also](#see-also)

Except as noted in this document, the [Jinja Documentation](https://jinja.palletsprojects.com/en/stable/templates/)
should be treated as authoritative for Jinja templating.

## Deviations from Global Rules

None at this time.

## Reference Guide(s)

[Jinja Documentation](https://jinja.palletsprojects.com/en/stable/templates/)

## VSCode Settings and Tooling

For Jinja I am currently only using Better Jinja, from Samuel Colvin,
and appropriate settings.json configuration.

## Alterations

Breaking from the documentation linked, files that are templated via jinja
should be saved with .j2 as the extension, and with the intended extension of
the destination file prior to that.
E.g. exmaple.conf.j2

## See also
