@echo off
title Jogo Adivinha - Sistemas de informacao
color 0d

:inicio
cls
set /a numSorteado=(%random% %% 50)+1 

:jogo
echo.

echo =-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=
echo           ADIVINHE O NUMERO ENTRE 1 E 50
echo =-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=
set /p chute=Chute um numero ou digite R para retornar: 

if /i %chute% == r (
    call menu_principal.bat
)
if %chute% LSS 1 (
    echo Opcao Invalida! Digite um numero maior que 1!
    pause > nul
    cls
    goto:jogo
)

if %chute% GTR 50 (
    echo Opcao Invalida! Digite um numero menor que 50!
    pause > nul
    cls
    goto:jogo
)

if %chute% LSS %numSorteado% (
    echo Digite um valor maior!
    pause > nul
    cls
    goto:jogo

)
if %chute% GTR %numSorteado% (
    echo Digite um valor menor!
    pause > nul
    cls
    goto:jogo
)

if %chute% == %numSorteado% (
    echo Parabens, voce acertou!
    echo Pressione ENTER para jogar novamente!
    pause > nul
    cls
    goto:inicio
)