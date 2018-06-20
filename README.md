Tenv
====

| **Linux + Mac** |
|-----------------|
| [![Build status](https://travis-ci.org/d99kris/tenv.svg?branch=master)](https://travis-ci.org/d99kris/tenv) |

Tenv - toggle python virtual environment - is a simple tool to toggle enabling/disabling a python
virtual environment.

Example Usage
=============

    ~$ tenv
    Directory ".env" does not exist, proceed to create it (y/n)? y
    Running virtualenv with interpreter /usr/bin/python2
    New python executable in /home/d99kris/.env/bin/python2
    Also creating executable in /home/d99kris/.env/bin/python
    Installing setuptools, pkg_resources, pip, wheel...done.
    (.env) ~$ 
    (.env) ~$ pip install spacy
    Collecting spacy
    ...
    (.env) ~$ tenv
    ~$ 

Supported Platforms
===================
Tenv is primarily developed and tested on Linux, but basic functionality should work on Mac as well.

Installation
============
Pre-requisites (Ubuntu, Mac):

    sudo pip install virtualenv

Download the source code:

    git clone https://github.com/d99kris/tenv && cd tenv

Generate Makefile and build:

    mkdir -p build && cd build && cmake .. && make -s

Optionally install in system:

    sudo make install

Optionally add alias to simplify usage, by adding the following line in ~/.bashrc (Linux)
or ~/.bash_profile (Mac):

    alias tenv=". `which tenv`"

Usage
=====

General usage syntax:

    . `which tenv`
    . `which tenv` <path>
    . `which tenv` --help
    . `which tenv` --version

Options:

    <path> optionally specify virtual environment directory name

    --help display this help and exit

    --version
           output version information and exit

Technical Details
=================
Tenv test suite can be run using these commands:

    mkdir -p build && cd build && cmake .. && make -s && ctest --output-on-failure

License
=======
Tenv is distributed under the MIT license. See LICENSE file.

Keywords
========
toggle,virtualenv

