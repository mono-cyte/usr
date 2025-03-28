-- 定义项目名称
add_rules("mode.debug", "mode.release")

target("main")
    set_kind("binary")
    add_files("main.cpp", "file1.cpp", "file2.cpp")
    add_includedirs("include")