cls

nasm boot.asm -o boot.img

nasm pro1.asm -o pro1.img

nasm pro2.asm -o pro2.img

nasm pro3.asm -o pro3.img

nasm process1.asm -o process1.img

nasm process2.asm -o process2.img

nasm process3.asm -o process3.img

nasm process4.asm -o process4.img

tcc -mt -c -omyos.obj MyOs.c

tasm MyOs.asm os.obj

tasm c_lib.asm c_lib.lib

tlink /3 /t os.obj myos.obj c_lib.lib,os.com

