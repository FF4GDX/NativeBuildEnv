Currently the wiki - https://github.com/bytedeco/javacpp-presets/wiki/Build-Environments - states the following pre-reqs:
 - JDK
 - Ant
 - Bazel
 - CMake
 - Maven
 - Ninja
 - MSYS2
 - Python 2.7
 - Python 3.x
 - Visual Studio Community (use 2019)
 - Windows SDK
 - CUDA

Out of all these, you "only" need to install:
 - Bazel (?)
 - MSYS2
 - Python 3.x (?)
 - Visual Studio Community (use 2019)
 - Windows SDK
 - CUDA

...the rest are included in this "Env" pack and will be setup in the environment (i.e. path) via scripts. Purpose is to try and keep host relatively clean :)

NOTE: Be sure to pay attention to the MSYS2_PATH_TYPE being uncommented if on Windows and using default ucrt64.ini!

