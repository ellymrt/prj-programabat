@echo off
title Adrielly Martineli - ADSMA2 SI 
color 0b

::2
:menuPrincipal
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo             menu principal
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo [1] Pacote Office
echo [2] Aplicativos windows
echo [3] Servicos diversos
echo [4] Gerenciador de máquina
echo [5] Jogos
echo [E] Encerrar sessão de login
echo [S] Sair do programa
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p resp=Digite uma opcao: 
if %resp% == 1 (goto:pacoteOffice)
if %resp% == 2 (goto:appsWindows)
if %resp% == 3 (goto:servicosDiversos)
if %resp% == 4 (goto:gerenciadorDeMaq)
if %resp% == 5 (goto:jogos)
if /i %resp% == e (call atv_conceitual.bat)
if /i %resp% == s (goto:sair) else (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo             opcao invalida!
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo.
        pause
        goto:menuPrincipal)

:sair
echo.
set /p resp=Deseja realmente sair do programa? [S/N]:
if /i %resp% equ s (exit) else (goto:menuPrincipal)

::3
:pacoteOffice
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo              pacote office
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo [W] Executar o Word
echo [E] Executar o Excel
echo [P] Executar o Power Point
echo [A] Executar o Access
echo [R] Retornar ao menu principal
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p resp=Digite uma opcao: 
if /i %resp% == w (
        start winword.exe
        goto:pacoteOffice
)
if /i %resp% == e (
        start excel.exe
        goto:pacoteOffice
)
if /i %resp% == p (
        start powerpnt.exe
        goto:pacoteOffice
)
if /i %resp% == a (
        start msaccess.exe
        goto:pacoteOffice
)
if /i %resp% == r (
        goto:menuPrincipal
) else (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo            opção inválida
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        pause
        goto:pacoteOffice
)

::4
:appsWindows
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo               apps windows
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo [C] Calculadora
echo [T] Teclado Virtual
echo [B] Bloco de Notas
echo [P] Paint
echo [W] Windows Explorer
echo [R] Retornar ao Menu
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p resp=Digite uma opcao: 
if /i %resp% == c (
        start calc.exe
        goto:appsWindows)
if /i %resp% == t (
        start osk.exe
        goto:appsWindows)
if /i %resp% == b (
        start notepad.exe
        goto:appsWindows)
if /i %resp% == p (
        start mspaint.exe
        goto:appsWindows)
if /i %resp% == w (
        start explorer.exe
        goto:appsWindows)
if /i %resp% == r (
        goto:menuPrincipal
) else (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo            opção inválida
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        pause
        goto:appsWindows
)


::5
:servicosDiversos
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo            servicos diversos
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo [N] Navegar na Web
echo [Y] Pesquisar Conteudo no Youtube
echo [G] Pesquisar Conteudo no Google
echo [T] Testar Conexao de Rede
echo [O] Obter IP da Maquina
echo [R] Retornar ao Menu
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p resp=Digite uma opcao: 
if /i %resp% == n (
        start chrome.exe
        goto:servicosDiversos)
if /i %resp% == g (
        start chrome.exe https:/www.google.com
        goto:servicosDiversos)
if /i %resp% == y (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*=-_-=*-*=-_-=*-*=-_-=*
        echo.
        set /p pesquisa=Digite o conteudo que deseja pesquisar:
        start chrome.exe https://www.youtube.com/results?search_query=%pesquisa%
        goto:servicosDiversos)
if /i %resp% == t (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*=-_-=*-*=-_-=*-*=-_-=*
        echo.
        set /p conexao=Digite IP da maquina ou endereco web: 
        ping %conexao% -t -n 5
        pause
        goto:servicosDiversos)
if /i %resp% == o (
        ipconfig /all
        pause
        goto:servicosDiversos)
if /i %resp% == r (goto:menuPrincipal) else (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo            opção inválida
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        pause
        goto:servicosDiversos)
::6
cls
:gerenciadorDeMaq
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo         gerenciador de maquina
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo [D] Desligar a Maquina
echo [I] Reiniciar a Maquina
echo [R] Retornar ao Menu
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p resp=Digite uma opcao:
if /i %resp% == d (
        shutdown -s
        goto:gerenciadorDeMaq
)
if /i %resp% == i (
        shutdown /r
        goto:gerenciadorDeMaq
)
if /i %resp% == r (
        goto:menuPrincipal
)

::7
:jogos
cls
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo                  jogos
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
echo [A] Adivinhar Numero
echo [J] JO-KEN-PO
echo [R] Retornar ao Menu
echo.
echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
echo.
set /p resp=Digite uma opcao: 
if /i %resp% == a (
        call adivinha.bat
)
if /i %resp% == j (
        call JOKENPO.bat
)
if /i %resp% == r (goto:menuPrincipal) else (
        echo.
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        echo            opção inválida
        echo *=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*-*=-_-=*
        pause
        goto:jogos)