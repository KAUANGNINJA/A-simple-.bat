@echo off
cls
:menu
cls
color 80

date /t

echo Computador: %computername%        Usuario: %username%

echo            MENU TAREFAS
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Apagar as Pastas Temp         *
echo * 3. Sair                          *
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo -------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% GEQ 4 goto opcao4

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ====================================
echo *      Lixeira Esvasiada            *
echo ====================================
pause
goto menu

:opcao2 
cls
del /q C:\Windows\Temp\*
del /q C:\Users\kauan\AppData\Local\Temp\*
del /q C:\Windows\Prefetch\*
echo ====================================
echo *       Pastas Temp Apagadas        *
echo ====================================
pause
goto menu

:opcao3
cls
exit

:opcao4
echo ===============================================
echo *  Opcao Invalida! Escolha outra opcao do menu * 
echo ===============================================
pause
goto menu
