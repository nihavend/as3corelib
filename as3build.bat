@echo off
rem SET JAVA_OPTS="-Duser.country=EN -Duser.language=en"
set COMPILER_PATH=D:\dev\royale-emulation-works\apache-royale-0.9.5-bin-js-swf\royale-asjs\js\bin

set SRCPATH=D:\dev\royale-emulation-works\github\as3corelib\

rem set swflib=D:\dev\royale-emulation-works\apache-royale-0.9.4-bin-js-swf\royale-asjs\frameworks\projects\MXRoyale\target\MXRoyale-0.9.5-SNAPSHOT-swf.swc
rem set jslib=D:\dev\royale-emulation-works\apache-royale-0.9.4-bin-js-swf\royale-asjs\frameworks\projects\MXRoyale\target\MXRoyale-0.9.5-SNAPSHOT-js.swc

set GITREPO=D:\dev\royale-emulation-works\github\royale-asjs\frameworks\projects
set MX_SWC=%GITREPO%\MXRoyale\target\MXRoyale-0.9.5-SNAPSHOT-swf.swc
set MX_JS=%GITREPO%\MXRoyale\target\MXRoyale-0.9.5-SNAPSHOT-js.swc

rem %COMPILER_PATH%\compc -compiler.library-path+=%SRCPATH%\build\libs -compiler.source-path %SRCPATH%\src -include-sources %SRCPATH%\src\com\adobe\utils\DateUtil.as -o .\as3corelib.swc
rem %COMPILER_PATH%\compc -compiler.include-libraries %mxlib%  -compiler.source-path+=%SRCPATH%\src -include-sources %SRCPATH%\src\com\adobe\utils\DateUtil.as -o as3corelib.swc
@echo on

set JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8 -Duser.country=EN -Duser.language=en
%COMPILER_PATH%\compc -external-library-path+=%MX_SWC% -js-external-library-path+=%MX_JS% -compiler.source-path+=%SRCPATH%\src -include-sources %SRCPATH%\src\com\adobe\utils\DateUtil.as -o as3corelib.swc


