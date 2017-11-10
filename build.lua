#!/usr/bin/env texlua

-- Build script for "translator" files

-- Identify the bundle and module
bundle = ""
module = "translator"

-- Install config files
installfiles = {"*.dict", "*.sty"}

-- Release a TDS-style zip
packtdszip = true

-- Typeset only the .tex files
typesetfiles = {"*.tex"}

-- Find and run the build system
kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
