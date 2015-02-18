# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]
### Added
- Mount folder /config in Vagrant machine for all kinds of config files.
### Changed
- Do not build iojs-dev anymore. Get kommunalcrowd/iojs-dev image.

## [0.1.0] - 2015-02-17
### Added
- This CHANGELOG file.
- A README file.
- Docker-image for [io.js](https://iojs.org).
- Vagrantfile to instantiate a CentOS 7 machine.
- Provisioning script for init provisioning of vagrant box.
- docker-compose.yml to run mariadb and iojs-dev containers.
