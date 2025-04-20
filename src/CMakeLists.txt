cmake_minimum_required(VERSION 3.10)

project(actions-simple)

if(APPLE)
    add_executable(actions-simple MACOSX_BUNDLE main.cpp)
elseif(WIN32)
    add_executable(actions-simple main.cpp)
else()
    add_executable(actions-simple main.cpp)
endif()

if(APPLE)
    install(TARGETS actions-simple BUNDLE DESTINATION .)
elseif(WIN32)
    set(CMAKE_INSTALL_SYSTEM_RUNTIME_DESTINATION .)
	include(InstallRequiredSystemLibraries)

    install(TARGETS actions-simple RUNTIME DESTINATION .)
else()
    install(TARGETS actions-simple RUNTIME DESTINATION bin)
endif()

include(CPack)
