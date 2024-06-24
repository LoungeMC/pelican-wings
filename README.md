# Pelican Wings Tweaked

This software is provided as is and is intended to be patches that I personally find useful myself and have/do use in production with Ptero. They are now being ported to Pelican Panel.

## Applying Patches
Open a terminal and type 
`./scripts/apply-<patch-name>.sh` for example `./scripts/apply-data-dir.sh` to apply the data dir SFTP patch.

## Patches
| Patch                        | Script            | Description                                                                                                                                                                                                                                                                    | Tested/State |
|:-----------------------------|:------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------:|
| 0001-different-data-sftp-dirs| apply-data-dir.sh | Creates a different SFTP Data directory that you login to with SFTP than what the panel installs to and sees. This can be used for custom backup scripts that take versioned snapshots for use with external backup software such as [BorgBackup](https://www.borgbackup.org/) | Alpha |

## Building Wings
Assuming you can build Wings normally, you can run `./scripts/build.sh` to build the patches you applied above. If not please install the needed build tools for your environment to build Wings. 

These tweaks have been coded and tested using GoLand by Jetbrains using a Linux System. This is what any support with building will assume. 



