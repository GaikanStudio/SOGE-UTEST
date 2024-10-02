include "../dependencies.lua"

TestingIncludeDirs = {}
TestingIncludeDirs["gtest"] = "libs/gtest/gtest/googletest/include"

TestingIncludeLibs = {}
TestingIncludeLibs["gtest_d"] = "libs/gtest/lib/Debug/gtest.lib"
TestingIncludeLibs["gtest_r"] = "libs/gtest/lib/Release/gtest.lib"

-- SOGE deps

TestingIncludeDirs["SOGE"] = "../SOGE/include"
TestingIncludeDirs["spdlog"] = "../3rdparty/spdlog/spdlog/include"
TestingIncludeDirs["EASTL"] = "../3rdparty/EASTL/EASTL/include"
TestingIncludeDirs["EABase"] = "../3rdparty/EASTL/EASTL/deps/EABase/include/Common/"

TestingIncludeLibs["SOGE_D"] = "../build/bin/Debug.windows.x86_64/SOGE/SOGE.lib"
TestingIncludeLibs["SOGE_R"] = "../build/bin/Release.windows.x86_64/SOGE/SOGE.lib"
TestingIncludeLibs["EASTL_D"] = "../3rdparty/EASTL/lib/bin/Debug.windows.x86_64/EASTL/EASTL.lib"
TestingIncludeLibs["EASTL_R"] = "../3rdparty/EASTL/lib/bin/Release.windows.x86_64/EASTL/EASTL.lib"