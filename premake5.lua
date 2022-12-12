project "SPIRV-cross-core"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "GLSL.std.450.h",
        "spirv.hpp",
        "spirv_cfg.hpp",
        "spirv_cfg.cpp",
        "spirv_common.hpp",
        "spirv_cross.hpp",
        "spirv_cross.cpp",
        "spirv_cross_parsed_ir.hpp",
        "spirv_cross_parsed_ir.cpp",
        "spirv_parser.hpp",
        "spirv_parser.cpp"
    }

    includedirs {
        "."
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"

		defines {
			"NDEBUG"
		}

project "SPIRV-cross-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "spirv_cpp.hpp",
        "spirv_cpp.cpp"
    }

    includedirs {
        "."
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        defines {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

        defines {
            "NDEBUG"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

        defines {
            "NDEBUG"
        }

project "SPIRV-cross-glsl"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "spirv_glsl.hpp",
        "spirv_glsl.cpp"
    }

    includedirs {
        "."
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        defines {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

        defines {
            "NDEBUG"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

        defines {
            "NDEBUG"
        }

project "SPIRV-cross-hlsl"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "spirv_hlsl.hpp",
        "spirv_hlsl.cpp"
    }

    includedirs {
        "."
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        defines {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

        defines {
            "NDEBUG"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

        defines {
            "NDEBUG"
        }


project "SPIRV-cross-msl"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "spirv_msl.hpp",
        "spirv_msl.cpp"
    }

    includedirs {
        "."
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        defines {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

        defines {
            "NDEBUG"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

        defines {
            "NDEBUG"
        }

project "SPIRV-cross-reflect"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "spirv_reflect.hpp",
        "spirv_reflect.cpp"
    }

    includedirs {
        "."
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        defines {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

        defines {
            "NDEBUG"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

        defines {
            "NDEBUG"
        }

project "SPIRV-cross-util"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "spirv_cross_util.hpp",
        "spirv_cross_util.cpp"
    }

    includedirs {
        "."
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

        defines {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

        defines {
            "NDEBUG"
        }

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

        defines {
            "NDEBUG"
        }
    
project "SPIRV-cross"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "main.cpp"
    }

    includedirs {
        "."
    }

    links {
        "SPIRV-cross-glsl",
        "SPIRV-cross-hlsl",
        "SPIRV-cross-cpp",
        "SPIRV-cross-reflect",
        "SPIRV-cross-msl",
        "SPIRV-cross-util",
        "SPIRV-cross-core",
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"

		defines {
			"NDEBUG"
		}
