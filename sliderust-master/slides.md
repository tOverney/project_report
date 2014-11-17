% Design of a Novel Many-Core Crypto Processor

Clément Humbert, Tristan Overney

October 17, 2014

# Summary

* Goal of the project
* Cryptography on GPU
* First Approach
* Microbenchmarking


# Goal of the project

Find a way to increase GPU performance for cryptographic application.

# Cryptography on GPU // c'est p-ê trop proche de la slide précédente mais je ne vois pas comment séparer mieux!

* High level of parallelism, ideal for cryptography.
* GPU’s principal focus are Single-precision floating-point number operations.
* Nividia’s Fermi is the most recent architecture with decent integer number operation.

# First approach

* First approach was to build hardware component (such as Montgomery Multiplier).
* We updated and prepared a Simulator (gp-gpu sim) to test custom OP codes.

There was too much things we didn’t know about Fermi.


# Microbenchmarking

* We had to have a better understanding of the Fermi architecture
* Fermi is closed-source and there is little to no precise infos about it on the web

