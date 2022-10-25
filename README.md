<h1>Tutorial básico para debugging de código Assembly com GDB</h1>

Instruções básicas para realizar o debbuging de um código em Assembly utilizando-se GNU debugger (GDB) do Linux:

No terminal Linux: 

1 - Para compilar o programa a partir de um código Assembly, execute: 

    as NOMEDOARQUIVO.s -o NOMEARQUIVO.o
    ld NOMEDOARQUIVO.o -o NOMEARQUIVO

2 - Inicie GNU debugger (GDB) apenas digitando "gdb" + enter;

3 - Dentro do gdb execute o comando para selecionar o arquivo de programa a ser debugado: 

    file FILENAME

4 - Crie um breakpoint no início do programa: 

    break *_start

OBS: Para criar breakpoints em outros pontos do programa utilize o comando disassemble para localizar os pontos de inserção conforme exemplo abaixo: OBS: O comando disassemble tem que ser executado após ter sido iniciado o debbuging com o comando run. 
<pre>
(gdb) disassemble
Dump of assembler code for function _start:
   0x0000000000401000 <+0>:     mov    $0x2,%rbx
   0x0000000000401007 <+7>:     mov    $0x3,%rcx
   0x000000000040100e <+14>:    mov    $0x1,%rax
   0x0000000000401015 <+21>:    cmp    $0x0,%rcx
=> 0x0000000000401019 <+25>:    je     0x401020 <complete>
</pre>

    break *_start+25 

5 - Execute o comando "run" para iniciar o debbuging.

6 - Para executar a próxima instrução execute:

    stepi

7 - Para listar os valores dos registradores a cada instrução executada durante o debugging utilize o comando: 

    info registers

8 - Para listar e gerenciar os breakpoints execute:

    info break

9 - Para remover um breakpoint digite:

    delete NUMBER

OBS: NUMBER é o número listado para o breakpoint a ser deletado que é mostrado no resultado do comando "info break". 
