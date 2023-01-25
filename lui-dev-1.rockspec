package = "lui"
version = "dev-1"
source = {
    url = "git+https://github.com/SolarLibraries/lui.git"
}
description = {
    summary = "This binding makes libui available to lua scripts.",
    detailed = "This binding makes libui available to lua scripts. libui is easy binding and should usable from nearly any lua project.",
    homepage = "https://github.com/SolarLibraries/lui",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5",
    "compat53"
}
external_dependencies = {
    UI = {
        library = "ui"
    }
}
build = {
    type = "builtin",
    modules = {
        lui = {
            incdirs = { "src", "$(UI_INCDIR)", "deps/auxiliar", "deps/compat" },
            libdirs = { "$(UI_LIBDIR)" },


            sources = {
                "src/lui.c",

                "deps/auxiliar/auxiliar.c",
                "deps/auxiliar/subsidiar.c",
            },
        }
    },

    copy_directories = {
        "examples"
    }
}
