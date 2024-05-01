@echo off
title Jogo da Adivinhacao
color 0A
:menu
cls

echo Bem-vindo ao Jogo da Adivinhacao!
echo.
echo Eu escolhi um numero de 1 a 100. Voce consegue adivinhar qual e?
echo.

set /a numero_aleatorio=%random% %% 100 + 1
set /a tentativas=0

:adivinhar
set /p palpite=Digite seu palpite (1-100): 

if "%palpite%"=="" (
    echo Por favor, digite um numero valido.
    goto adivinhar
)

set /a tentativas+=1

if %palpite% equ %numero_aleatorio% (
    echo Parabens! Voce acertou em %tentativas% tentativas!
    echo Voce perdeu seu tempo, parabens, quer tentar de novo?
    pause
    goto menu
) else if %palpite% lss %numero_aleatorio% (
    echo O numero que estou pensando e maior.
) else (
    echo O numero que estou pensando e menor.
)

goto adivinhar