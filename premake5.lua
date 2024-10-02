include "../Premake5/scripts/helpers.lua"
include "dependencies.lua"

print(os.date() .. " Prepare test repo...")
os.execute("git submodule update --init --recursive")
print(os.date() .. " Done!")


workspace "SOGE-UTEST"
    architecture "x64"
    configurations {"Debug", "Release"}

    buildpattern = "%{cfg.buildcfg}.%{cfg.system}.%{cfg.architecture}"

    group "Tests"
        include "tests/module/utils/stopwatch/premake5.lua"
    group ""

group "Dependencies"
    include "../premake5.lua"
    include "libs/gtest/premake5.lua"
group ""