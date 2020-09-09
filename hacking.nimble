# Package

version       = "0.3.4"
author        = "xflywind"
description   = "Hacking to the algorithm."
license       = "Apache-2.0"
srcDir        = "src"


# Dependencies
requires "nim >= 1.2.6"

task tests, "Run all tests":
  exec "testament all"
