@echo off

:menu
cls
echo Trabalho Sistemas Operacionais 
echo Grupo Gabriel Zendron, Breno, Mariana
echo Escolha uma opcao:
echo 1. Opcao 1 - Configuracoes 
echo 2. Opcao 2 - verificacao de integridade do sistema
echo 3. Opcao 3 - Gerenciador de tarefas
echo 4. Opcao 4 - Abrir Armazenamento
echo 5. Opcao 5 - Verificar IP
echo 6. Opcao 6 - Informacoes do sistema
echo.

set /p escolha="Digite o numero da opcao desejada: "

if "%escolha%"=="1" (
    echo Voce escolheu a Opcao 1.
    echo Abrindo Configuracoes...
    start ms-settings:
    pause
    goto menu
) else if "%escolha%"=="2" (
    echo Voce escolheu a Opcao 2.
    echo Executando verificacao de integridade do sistema...
    sfc /scannow
    pause
    goto menu
) else if "%escolha%"=="3" (
    echo Voce escolheu a Opcao 3.
    echo Abrindo o Gerenciador de Tarefas...
    start taskmgr
    pause
    goto menu
) else if "%escolha%"=="4" (
    echo Voce escolheu a Opcao 4.
    echo Abrindo o armazenamento...
    start explorer C:\
    pause
    goto menu
) else if "%escolha%"=="5" (
    echo Voce escolheu a Opcao 5.
    ipconfig
    pause
    goto menu
) else if "%escolha%"=="6" (
    echo Voce escolheu a Opcao 6.
    systeminfo
    pause
    goto menu
    ) else (
    echo Opcao invalida. Por favor, escolha novamente.
    pause
    goto menu
)