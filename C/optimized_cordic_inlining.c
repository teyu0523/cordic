/* 
 * File:   optimized_main.c
 * Author: Allen
 *
 * Created on July 13, 2014, 8:46 PM
 * 
 * CORDIC, also known as COordinate Rotation DIgital Computer.
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define SCALE_CONST 4194304.0
#define INV_A_CONST 0.607253
#define INV_SCALE_CONST 0.000000238418579

int main(int argc, char** argv) {
    // (x, y, 0)
    // Testbench
    int z = 0;
    int x = 1*SCALE_CONST;
    int y = 1*SCALE_CONST;
    printf("\nVectoring mode: \n");
    printf("x: 1, y: 1\n");
    __asm__ ("vec %0, %1, %2" : "=r" (z) : "r" (x), "r" (y));
    x = 1*SCALE_CONST;
    y = 1.7320508075688772935274*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: 1, y: sqrt(3)\n");
    __asm__ ("vec %0, %1, %2" : "=r" (z) : "r" (x), "r" (y));
    x = 1.7320508075688772935274*SCALE_CONST;
    y = 1*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: sqrt(3), y: 1\n");
    __asm__ ("vec %0, %1, %2" : "=r" (z) : "r" (x), "r" (y));
    x = 2*SCALE_CONST;
    y = 1*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: 2, y: 1\n");
    __asm__ ("vec %0, %1, %2" : "=r" (z) : "r" (x), "r" (y));
    x = 1*SCALE_CONST;
    y = 2*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: 1, y: 2\n");
    __asm__ ("vec %0, %1, %2" : "=r" (z) : "r" (x), "r" (y));

    printf("\nRotaional_mode: \n");
    // (1, 0, z)
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("z: 0\n");
    __asm__ ("rox %0, %1" : "=r" (x) : "r" (z));
    __asm__ ("roy %0, %1" : "=r" (y) : "r" (z));
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 30*SCALE_CONST;
    printf("z: 30\n");
    __asm__ ("rox %0, %1" : "=r" (x) : "r" (z));
    __asm__ ("roy %0, %1" : "=r" (y) : "r" (z));
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 45*SCALE_CONST;
    printf("z: 45\n");
    __asm__ ("rox %0, %1" : "=r" (x) : "r" (z));
    __asm__ ("roy %0, %1" : "=r" (y) : "r" (z));
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 70*SCALE_CONST;
    printf("z: 70\n");
    __asm__ ("rox %0, %1" : "=r" (x) : "r" (z));
    __asm__ ("roy %0, %1" : "=r" (y) : "r" (z));
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 80*SCALE_CONST;
    printf("z: 80\n");
    __asm__ ("rox %0, %1" : "=r" (x) : "r" (z));
    __asm__ ("roy %0, %1" : "=r" (y) : "r" (z));
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 90*SCALE_CONST;
    printf("z: 90\n");
    __asm__ ("rox %0, %1" : "=r" (x) : "r" (z));
    __asm__ ("roy %0, %1" : "=r" (y) : "r" (z));
    return (EXIT_SUCCESS);
}
