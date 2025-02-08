# opnsense-bkp

Uses the opnsense API to back up the router configuration.

## Prerequisites

Create an opnsense user with privileges to create backup files. Generate an API key for the user and provide values for the following variables in a systemd drop-in file.

- `OPNSENSE_DOMAIN` : Domain for the opnsense router.
- `OPNSENSE_USER_KEY` : Generated key for the user.
- `OPNSENSE_USER_SECRET` : Generated secret for the user.

Before creating an opnsense user, create a group by navigating to `System > Access > Groups` and add a new group for `backup_operators`. Modify the group to add `Diagnostics: Configuration History` privileges to the group.

Navigate to `System > Access > Users` and create a new `backup` user. Choose to `Generate a scrambled password to prevent local database logins for this user.` and add it to the `backup_operators` group. Add an API key and observe the file downloaded includes a key and a secret. Save the key and secret to your password manager. The key should be supplied to `OPNSENSE_USER_KEY` and the secret to `OPNSENSE_USER_SECRET` variables.

## Quadlet

An example quadlet container file and timer have been added to the quadlet directory.
