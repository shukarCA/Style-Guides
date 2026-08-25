# YAML Style Guide

YAML is a cofngiruation file format, which I use primarily for Ansible,
 but also for docker-compose files, and Home Assistant configurations.

- [YAML Style Guide](#yaml-style-guide)
  - [Reference Guide(s)](#reference-guides)
  - [VSCode Settings and Tooling](#vscode-settings-and-tooling)
  - [Alterations](#alterations)
  - [See also](#see-also)

Except as noted in this document, the approriate style guides linked in the
 Reference Guide(s) and See Also sections should be treated as authoritative
 for yaml documents.

## Deviations from Global Rules

Contrary to general layout flexibility, all YAML documents must strictly enforce
 a 2-space indentation (no tabs) to guarantee cross-platform parser compatibility.

## Reference Guide(s)

- [Jose Angel Ansible Style Guide](https://github.com/imjoseangel/ansible-styleguide)
- [Open-Shift Ansible Style Guide](https://github.com/openshift/openshift-ansible/blob/master/docs/style_guide.adoc)

## VSCode Settings and Tooling

For Yaml related projects I am using 3 extensions currently,
 1 bundled extension, and 1 comman line tool installed via pip.

For general purpose Yaml linting and language support, YAML from Red Hat is in use.

For Ansible specific language support and linting, Ansible from Red Hat is in use,
 supported by ansible-lint installed via pip,
Configuration for ansible-lint is contained in the .ansible-lint configuration file.

For Docker Compose support I am using the Docker extension from Microsoft,
 which brings along the Container Tools extension.

## Alterations

None at this time.

## See also

- [Red Hat Ansible Tip and Tricks](https://docs.ansible.com/projects/ansible/latest/tips_tricks/ansible_tips_tricks.html)
- [Ansible Lint Rules](https://docs.ansible.com/projects/lint/rules/)
- [Home Assistant YAML Guide](<https://developers.home-assistant.io/docs/documenting/yaml-style-guide/>)
- [Docker Compose Reference](https://docs.docker.com/reference/compose-file/)
