def FlagsForFile( filename, **kwargs ):
  return {
    'flags': [ '-x', 'c++', '-Wall', '-Wextra', '-Werror',
	'-isystem', '../bundle/YouCompleteMe/third_party/cpp/BoostParts',
	'-isystem', '../bundle/YouCompleteMe/third_party/ycmd/cpp/llvm/include',
	'-isystem', '../bundle/YouCompleteMe/third_party/ycmd/clang_includes/include',
	'-I', '../bundle/YouCompleteMe/third_party/cpp/ycm',
	'-I', '../bundle/YouCompleteMe/third_party/cpp/ycm/ClangCompleter',
	'-isystem', '../bundle/YouCompleteMe/third_party/cpp/ycm/tests/gmock/gtest',
	'-isystem', '../bundle/YouCompleteMe/third_party/cpp/ycm/tests/gmock/gtest/include',
	'-isystem', '../bundle/YouCompleteMe/third_party/cpp/ycm/tests/gmock',
	'-isystem', '../bundle/YouCompleteMe/third_party/cpp/ycm/tests/gmock/include',
	'-isystem', 'C:/LLVM/lib/clang/4.0.0/include', '-isystem', '/LLVM/lib/clang/4.0.0/include',
	'-target', '<x86_64>-pc-windows-msvc<14.10.25017>'
  ],
  }