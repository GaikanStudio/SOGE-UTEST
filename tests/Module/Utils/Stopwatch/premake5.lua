project "StopwatchTests"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    targetdir("build/bin/" .. buildpattern .. "/%{prj.name}")
    objdir("build/int/" .. buildpattern .. "/%{prj.name}")

    files
    {
        "main.cpp"
    }

    includedirs
    {
        "%{wks.location}/%{TestingIncludeDirs.gtest}",
        "%{wks.location}/%{TestingIncludeDirs.SOGE}",
        "%{wks.location}/%{TestingIncludeDirs.spdlog}",
        "%{wks.location}/%{TestingIncludeDirs.EASTL}",
        "%{wks.location}/%{TestingIncludeDirs.EABase}"
    }

    filter "configurations:Debug"
        symbols "on"

        defines
        {
            "SOGE_DEBUG",
            "SOGE_ENABLE_ASSERT"
        }

        links
        {
            "%{wks.location}/%{TestingIncludeLibs.gtest_d}",
            "%{wks.location}/%{TestingIncludeLibs.SOGE_D}",
            "%{wks.location}/%{TestingIncludeLibs.EASTL_D}"
        }

    filter "configurations:Release"
        optimize "on"

        defines
        {
            "SOGE_RELEASE"
        }

        links
        {
            "%{wks.location}/%{TestingIncludeLibs.gtest_r}",
            "%{wks.location}/%{TestingIncludeLibs.SOGE_R}",
            "%{wks.location}/%{TestingIncludeLibs.EASTL_R}"
        }