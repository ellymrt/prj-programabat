@echo off
title PEDRA PAPEL TESOURA - Sistemas de informacao
color 0d

:menu
    cls
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo               BEM-VINDO AO JO-KEN-PO
    echo           FEITO POR: ADRIELLY MARTINELI
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo.
    echo [1] Iniciar jogo 
    echo [2] Ver regras
    echo [3] Voltar para o menu
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo.
    set /p opcao=Escolha uma opcao: 
    if %opcao% == 1 (goto:jogo)
    if %opcao% == 2 (goto:regras)
    if %opcao% == 3 (call menu_principal.bat) else (
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo      Clique em qualquer tecla para continuar
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:menu)

    set /a empate = 0
    set /a perdeu = 0
    set /a ganhou = 0
    set /a ponto = 1

:jogo
::codigo pro jogo desespero
    cls
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo.
    echo [M] Voltar para o menu
    echo [1] Pedra 
    echo [2] Papel 
    echo [3] Tesoura
    echo [4] Lagarto
    echo [5] Spock
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    set /p opcaoJogador=Escolha uma opcao para jogar:
    if %opcaoJogador% == 1 (goto:sePedra)
    if %opcaoJogador% == 2 (goto:sePapel)
    if %opcaoJogador% == 3 (goto:seTesoura)
    if %opcaoJogador% == 4 (goto:seLagarto)
    if %opcaoJogador% == 5 (goto:seSpock)
    if /i %opcaoJogador% == m (goto:menu) else (     
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo   Clique em qualquer tecla para jogar outra vez.
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:jogo)

    ::
    ::
    ::

:sePedra
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    set /a opcaoPc=(%random% %% 5)+1
    if %opcaoPc% == 1 (
        echo.
        echo Você jogou: Pedra
        echo PC jogou: Pedra
        echo.
        echo Deu empate!
        set /a empate=%empate%+1
    )
    if %opcaoPc% == 2 (
        echo.
        echo Você jogou: Pedra
        echo PC jogou: Papel
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )     
    if %opcaoPc% == 3 (
        echo.
        echo Você jogou: Pedra
        echo PC jogou: Tesoura
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )
    if %opcaoPc% == 4 (
        echo.
        echo Você jogou: Pedra
        echo PC jogou: Lagarto
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )   
    if %opcaoPc% == 5 (
        echo.
        echo Você jogou: Pedra
        echo PC jogou: Spock
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo                   PLACAR DO JOGO
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo VITORIAS: %ganhou%
    echo DERROTAS: %perdeu%
    echo EMPATES: %empate%
    echo.
    set /p novamente=Deseja jogar novamente? (S/N):
    if /i %novamente% == s (goto:jogo)
    if /i %novamente% == n (goto:menu) else (
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo   Clique em qualquer tecla para jogar outra vez.
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:jogo)

:sePapel
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    set /a opcaoPc=(%random% %% 5)+1
    if %opcaoPc% == 1 (
        echo.
        echo Você jogou: Papel
        echo PC jogou: Pedra
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )
    if %opcaoPc% == 2 (
        echo.
        echo Você jogou: Papel
        echo PC jogou: Papel
        echo.
        echo Deu empate!
        set /a empate=%empate%+1
    )     
    if %opcaoPc% == 3 (
        echo.
        echo Você jogou: Papel
        echo PC jogou: Tesoura
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )
    if %opcaoPc% == 4 (
        echo.
        echo Você jogou: Papel
        echo PC jogou: Lagarto
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )   
    if %opcaoPc% == 5 (
        echo.
        echo Você jogou: Papel
        echo PC jogou: Spock
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo                   PLACAR DO JOGO
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo VITORIAS: %ganhou%
    echo DERROTAS: %perdeu%
    echo EMPATES: %empate%
    echo.
    set /p novamente=Deseja jogar novamente? (S/N):
    if /i %novamente% == s (goto:jogo)
    if /i %novamente% == n (goto:menu) else (
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo   Clique em qualquer tecla para jogar outra vez.
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:jogo)

:seTesoura
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    set /a opcaoPc=(%random% %% 5)+1
    if %opcaoPc% == 1 (
        echo.
        echo Você jogou: Tesoura
        echo PC jogou: Pedra
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )
    if %opcaoPc% == 2 (
        echo.
        echo Você jogou: Tesoura
        echo PC jogou: Papel
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )     
    if %opcaoPc% == 3 (
        echo.
        echo Você jogou: Tesoura
        echo PC jogou: Tesoura
        echo.
        echo Deu empate!
        set /a empate=%empate%+1
    )
    if %opcaoPc% == 4 (
        echo.
        echo Você jogou: Tesoura
        echo PC jogou: Lagarto
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )   
    if %opcaoPc% == 5 (
        echo.
        echo Você jogou: Tesoura
        echo PC jogou: Spock
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo                   PLACAR DO JOGO
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo VITORIAS: %ganhou%
    echo DERROTAS: %perdeu%
    echo EMPATES: %empate%
    echo.
    set /p novamente=Deseja jogar novamente? (S/N):
    if /i %novamente% == s (goto:jogo)
    if /i %novamente% == n (goto:menu) else (
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo   Clique em qualquer tecla para jogar outra vez.
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:jogo)

:seLagarto
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    set /a opcaoPc=(%random% %% 5)+1
    if %opcaoPc% == 1 (
        echo.
        echo Você jogou: Lagarto
        echo PC jogou: Pedra
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )
    if %opcaoPc% == 2 (
        echo.
        echo Você jogou: Lagarto
        echo PC jogou: Papel
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )     
    if %opcaoPc% == 3 (
        echo.
        echo Você jogou: Lagarto
        echo PC jogou: Tesoura
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )
    if %opcaoPc% == 4 (
        echo.
        echo Você jogou: Lagarto
        echo PC jogou: Lagarto
        echo.
        echo Deu empate!
        set /a empate=%empate%+1
    )   
    if %opcaoPc% == 5 (
        echo.
        echo Você jogou: Lagarto
        echo PC jogou: Spock
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo                   PLACAR DO JOGO
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo VITORIAS: %ganhou%
    echo DERROTAS: %perdeu%
    echo EMPATES: %empate%
    echo.
    set /p novamente=Deseja jogar novamente? (S/N):
    if /i %novamente% == s (goto:jogo)
    if /i %novamente% == n (goto:menu) else (
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo   Clique em qualquer tecla para jogar outra vez.
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:jogo)

:seSpock
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    set /a opcaoPc=(%random% %% 5)+1
    if %opcaoPc% == 1 (
        echo.
        echo Você jogou: Spock
        echo PC jogou: Pedra
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )
    if %opcaoPc% == 2 (
        echo.
        echo Você jogou: Spock
        echo PC jogou: Papel
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )     
    if %opcaoPc% == 3 (
        echo.
        echo Você jogou: Spock
        echo PC jogou: Tesoura
        echo.
        echo Voce ganhou!
        set /a ganhou=%ganhou%+1
    )
    if %opcaoPc% == 4 (
        echo.
        echo Você jogou: Spock
        echo PC jogou: Lagarto
        echo.
        echo Voce perdeu!
        set /a perdeu=%perdeu%+1
    )   
    if %opcaoPc% == 5 (
        echo.
        echo Você jogou: Spock
        echo PC jogou: Spock
        echo.
        echo Deu empate!
        set /a empate=%empate%+1
    )
    echo.
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo                   PLACAR DO JOGO
    echo ++--==--++--==--++--==--++--==--++--==--++--==--++
    echo VITORIAS: %ganhou%
    echo DERROTAS: %perdeu%
    echo EMPATES: %empate%
    echo.
    set /p novamente=Deseja jogar novamente? (S/N):
    if /i %novamente% == s (goto:jogo)
    if /i %novamente% == n (goto:menu) else (
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo                   OPCAO INVALIDA
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        echo.
        echo   Clique em qualquer tecla para jogar outra vez.
        echo.
        echo ++--==--++--==--++--==--++--==--++--==--++--==--++
        pause > nul
        goto:jogo)
::
::
::

:regras
    cls
    echo ++--==--++--==--++--==--++
    echo.
    echo [F] Pedra 
    echo [G] Papel 
    echo [H] Tesoura
    echo [I] Lagarto
    echo [J] Spock
    echo [K] Voltar para o menu
    echo.
    echo ++--==--++--==--++--==--++
    echo.
    set /p exemplo=Escolha um:
    echo.
    echo ++--==--++--==--++--==--++
    if /i %exemplo% == f (
        echo.
        echo Pedra:
        echo Empata com Pedra;
        echo Ganha de Tesoura e Lagarto;
        echo Perde de Papel e Spock;
        echo.
        echo ++--==--++--==--++--==--++
        echo.
        echo Clique em qualquer tecla
        echo para consultar outra
        echo opcao.
        echo.
        echo ++--==--++--==--++--==--++   
        pause > nul
        cls
        goto:regras
    )
    if /i %exemplo% == g (
        echo.
        echo Papel:  
        echo Empata com Papel;             
        echo Ganha de Pedra e Spock;       
        echo Perde de Tesoura e Lagarto;   
        echo.
        echo ++--==--++--==--++--==--++
        echo.
        echo Clique em qualquer tecla
        echo para consultar outra
        echo opcao.
        echo.
        echo ++--==--++--==--++--==--++   
        pause > nul
        cls
        goto:regras 
    )
    if /i %exemplo% == h (
        echo.
        echo Tesoura:
        echo Empata com Tesoura;                      
        echo Ganha de Lagarto e Papel;     
        echo Perde de Pedra e Spock;
        echo.
        echo ++--==--++--==--++--==--++
        echo.
        echo Clique em qualquer tecla
        echo para consultar outra
        echo opcao.
        echo.
        echo ++--==--++--==--++--==--++   
        pause > nul
        cls
        goto:regras         
    )
    if /i %exemplo% == i (
        echo.
        echo Lagarto: 
        echo Empata com Lagarto;           
        echo Ganha de Papel e Spock;       
        echo Perde de Pedra e Tesoura;     
        echo.
        echo ++--==--++--==--++--==--++
        echo.
        echo Clique em qualquer tecla
        echo para consultar outra
        echo opcao.
        echo.
        echo ++--==--++--==--++--==--++   
        pause > nul
        cls
        goto:regras 
    )
    if /i %exemplo% == j (
        echo.
        echo Spock:
        echo Empata com Spock;
        echo Ganha de Pedra e Tesoura;     
        echo Perde de Lagarto e Papel.     
        echo.
        echo ++--==--++--==--++--==--++
        echo.
        echo Clique em qualquer tecla
        echo para consultar outra
        echo opcao.
        echo.
        echo ++--==--++--==--++--==--++   
        pause > nul
        cls
        goto:regras 
    )
    if /i %exemplo% == k (
        goto:menu
    ) else (
        echo.
        echo ++--==--++--==--++--==--++
        echo       OPCAO INVALIDA
        echo ++--==--++--==--++--==--++
        echo.
        echo Clique em qualquer tecla
        echo para consultar outra
        echo opcao.
        echo.
        echo ++--==--++--==--++--==--++
        pause > nul
        goto:regras)