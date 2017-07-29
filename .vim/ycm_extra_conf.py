import os
import ycm_core

flags = [
  '-Wall',
  '-Wextra',
  '-DNDEBUG',
  '-std=c++11',
  '-xc++',
  '-isystem/usr/include/',
  ]

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', ]

def FlagsForFile( filename, **kwargs ):
  return {
  'flags': flags,
  'do_cache': True
  }
