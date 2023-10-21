#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mod::mod" for configuration ""
set_property(TARGET mod::mod APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(mod::mod PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmod.a"
  )

list(APPEND _cmake_import_check_targets mod::mod )
list(APPEND _cmake_import_check_files_for_mod::mod "${_IMPORT_PREFIX}/lib/libmod.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
