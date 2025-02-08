# opnsense-bkp

Uses the opnsense API to back up the router configuration.

## Prerequisites

Create an opnsense user with privileges to create backup files. Generate an API key for the user and provide values for the following variables in a systemd drop-in file.

- `OPNSENSE_DOMAIN` : Domain for the opnsense router.
- `OPNSENSE_USER_KEY` : Generated key for the user.
- `OPNSENSE_USER_SECRET` : Generated secret for the user.

## Quadlet

An example quadlet container file and timer have been added to the quadlet directory.
