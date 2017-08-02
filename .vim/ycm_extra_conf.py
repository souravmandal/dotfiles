import os
import ycm_core

flags = [
  '-Wall',
  '-Wextra',
  '-std=c++11',
  '-x',
  'c++',
  ]

SOURCE_EXTENSIONS = [ '.C', '.cpp', '.cxx', '.cc', ]

def FlagsForFile( filename, **kwargs ):
  return {
  'flags': flags,
  'do_cache': True
  }
