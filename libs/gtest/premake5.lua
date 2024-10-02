print(os.date() .. " Prepare GoogleTests submodule...")

if not isdir("./lib") then
    cmake = "cmake"

    os.execute(cmake .. " -S ./gtest -B ./gtest/sbuild")
    os.execute(cmake .. " --build ./gtest/sbuild --config Debug")
    os.execute(cmake .. " --build ./gtest/sbuild --config Release")
    os.execute("move ./gtest/sbuild/lib ./")
end