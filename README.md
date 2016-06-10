About ironic-webclient
======================

A webclient for OpenStack Ironic.

Project homepage: https://github.com/openstack/ironic-webclient


About ironic-webclient_packages
===============================

This is a project to build different packages for ironic-webclient 

For now, it only creates tarballs ready to use in static http server.

The main reason of this project is to provide packages for https://github.com/jriguera/ansible-ironic-standalone


Building
--------

It uses docker to build the package, so you will need docker daemon
running. The **ironic_webclient** source is living in `src` as submodule.

Initialize the src git submodule by typing:

```
git submodule init
git submodule update
```

and then just type `./run.sh` to create a docker image and run it.
The tarball package will appear in `build` folder, ready to use


Docker
------

You can build the docker container by typing `docker build -t ironic_webclient .`


Author
------
José Riguera López  <jriguera@gmail.com>
