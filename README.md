# SDSC "molden" roll

## Overview

This roll bundles the Molden MD visualization package.

For more information about Moden please visit the official web page:

- <a href="http://www.cmbi.ru.nl/molden/" target="_blank">Molden </a> is a
package for displaying Molecular Density from the Ab Initio packages GAMESS-UK,
GAMESS-US and GAUSSIAN and the Semi-Empirical packages Mopac/Ampac, it also
supports a number of other programs via the Molden Format.


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate molden source file(s) using a machine that does
have Internet access and copy them into the `src/molden` directories on your
Rocks development machine.


## Dependencies

yum install imake mesa-libGLU-devel

The sdsc-roll must be installed on the build machine, since the build process
depends on make include files provided by that roll.

The roll sources assume that modulefiles provided by SDSC compiler and mpi
rolls are available, but it will build without them as long as the environment
variables they provide are otherwise defined.


## Building

To build the molden-roll, execute this on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make 2>&1 | tee build.log
```

A successful build will create the file `molden-*.disk1.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll molden
% cd /export/rocks/install
% rocks create distro
% rocks run roll molden | bash
```

In addition to the software itself, the roll installs molden environment
module files in:

```shell
/opt/modulefiles/applications/molden
```


## Testing

The molden-roll includes a test script which can be run to verify proper
installation of the roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/molden.t 
```
