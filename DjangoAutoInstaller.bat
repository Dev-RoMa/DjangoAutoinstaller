@echo off
python --version

pip --version
pip install virtualenv
virtualenv env

cd "D:\"
mkdir "djangoproj"
cd "D:\djangoproj"

@set "VIRTUAL_ENV=D:\djangproj\env"

@if defined _OLD_VIRTUAL_PROMPT (
    @set "PROMPT=%_OLD_VIRTUAL_PROMPT%"
) else (
    @if not defined PROMPT (
        @set "PROMPT=$P$G"
    )
    @if not defined VIRTUAL_ENV_DISABLE_PROMPT (
        @set "_OLD_VIRTUAL_PROMPT=%PROMPT%"
    )
)
@if not defined VIRTUAL_ENV_DISABLE_PROMPT (
    @if "" NEQ "" (
        @set "PROMPT=() %PROMPT%"
    ) else (
        @for %%d in ("%VIRTUAL_ENV%") do @set "PROMPT=(%%~nxd) %PROMPT%"
    )
)

@REM Don't use () to avoid problems with them in %PATH%
@if defined _OLD_VIRTUAL_PYTHONHOME @goto ENDIFVHOME
    @set "_OLD_VIRTUAL_PYTHONHOME=%PYTHONHOME%"
:ENDIFVHOME

@set PYTHONHOME=

@REM if defined _OLD_VIRTUAL_PATH (
@if not defined _OLD_VIRTUAL_PATH @goto ENDIFVPATH1
    @set "PATH=%_OLD_VIRTUAL_PATH%"
:ENDIFVPATH1
@REM ) else (
@if defined _OLD_VIRTUAL_PATH @goto ENDIFVPATH2
    @set "_OLD_VIRTUAL_PATH=%PATH%"
:ENDIFVPATH2

@set "PATH=%VIRTUAL_ENV%\Scripts;%PATH%"

pause

pip install Django

set /p input=Nombre del proyecto:

django-admin start proyect %input%

echo proyecto creado!

pause