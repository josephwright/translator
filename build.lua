#!/usr/bin/env texlua

-- Build script for "translator" files

-- Identify the bundle and module
bundle = ""
module = "translator"

-- Source and live files are the same
installfiles = {"*.dict", "*.sty"}
sourcefiles  = installfiles

testfiledir = ""

-- Release a TDS-style zip
packtdszip = true

-- Typeset only the .tex files
typesetfiles = {"*.tex"}

-- Only release README
textfiles = {"*.md"}

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end
