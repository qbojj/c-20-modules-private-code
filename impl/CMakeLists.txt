cmake_minimum_required(VERSION 3.28)
project(test)

include(GNUInstallDirs)

add_library(mod)
target_sources(
  mod
  PUBLIC FILE_SET cxx_modules TYPE CXX_MODULES FILES mod.ixx
  PRIVATE mod_impl.cpp)
target_compile_features(mod PUBLIC cxx_std_20)

install(
  TARGETS mod
  EXPORT mod
  LIBRARY
  ARCHIVE
  RUNTIME FILE_SET cxx_modules
          DESTINATION cxx_modules
          CXX_MODULES_BMI
          DESTINATION cxx_modules_bmi)

install(
  EXPORT mod
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/mod
  NAMESPACE mod::
  CXX_MODULES_DIRECTORY cxx)
