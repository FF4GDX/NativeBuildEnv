#! /dev/null
# shouldn't be run directly

echo "---------------------------------------------------------------"
echo "!                                                             !"
echo "!   Ensure all entries exist and look sane before building!   !"
echo "!                                                             !"
echo "---------------------------------------------------------------"
echo ""
echo "Platform      : ${Platform}"
echo "VS version    : ${VisualStudioVersion}"
# echo "UCRT version  : ${UCRTVersion}    [NB: only needed for MSYS2 UCRT]"
echo "MINGW_CHOST   : ${MINGW_CHOST}"
echo "WinSDK EXE    : ${WindowsSDK_ExecutablePath_x64}"
echo "CUDA Path     : ${CUDA_PATH}"
_env_java_version1=`java -version 2>&1 | head -n 1 | awk -F '"' '{print $2}'`
_env_java_version2=`"${JAVA_HOME}\bin\java.exe" -version 2>&1 | head -n 1 | awk -F '"' '{print $2}'`
echo "Java version  : ${_env_java_version1} / ${_env_java_version2}   [NB: via PATH/JAVA_HOME, should match]"
echo ""
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "TODO: Clean all this up, test on a clean Windows VM with clean MSYS2.... document "
echo "      all dependencies that we actually need"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""

