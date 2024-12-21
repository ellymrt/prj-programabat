@echo off
title Adrielly Martineli - ADSMA2 SI 
color 0b

:inicio
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo         Nome: Adrielly Martineli
echo              ADSMA2 - SI
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
pause

::1
:login
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo                  login
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo         [N] Criar nova conta
echo         [L] Logar
echo         [S] Sair do programa
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p log=Digite uma opção: 
::"se a opcao da variavel tanto minuscula qnt maiuscula for igual vai para"
if /i %log% equ n (goto:criarConta)
if /i %log% equ l (goto:logar)
if /i %log% equ s (goto:sair) else (
    echo.
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo            opção inválida
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    pause
    goto:login
    )

:sair
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p  resp=Deseja realmente sair do programa? [S/N]: 
if /i %resp% equ s (exit) else (goto:login)

:criarConta
cls 
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo            crie uma conta
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
if not exist login.txt (
    echo Lista de login gerada com sucesso >> login.txt)
echo.
set /p usuario=Crie um usuário ou digite seu e-mail: 
if "%usuario%" == "" (
    echo.
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo            opção inválida
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo.
    pause
    goto:login
)
set /p senha=Crie uma senha: 
if "%senha%" == "" (
    echo.
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo            opção inválida
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo.
    pause
    goto:login
)
findstr /b %usuario% login.txt
if %errorlevel% neq 0 (
    echo %usuario% %senha% >> login.txt
    echo.
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo       conta cadastrada com sucesso
    echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
    echo.
    goto perguntar) else (
        cls
        echo. 
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo            conta já existente
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo.
        pause
        goto login)

:perguntar
set /p resp=Deseja cadastrar uma nova conta? [S/N]: 
if /i %resp% equ s (goto criarConta) else (goto login)

:logar
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo                  login
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p usuario=Usuário ou E-mail: 
set /p senha=Digite a senha: 

for /f "tokens=1,2" %%A in ('findstr /b "%usuario%" login.txt') do (
    if "%%B"=="%senha%" (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo           logado com sucesso
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo.
        pause
        call menu_principal.bat
    )
)

echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo    usuario/email ou senha incorretos
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
pause
goto login