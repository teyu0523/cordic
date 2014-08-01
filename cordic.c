/* 
 * File:   main.c
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
#define A_CONST 1.646760

int ARCTAN[29] = {
    188743680, 111421901, 58872272, 29884485, 15000234, 7507429, 3754631, 
    1877430, 938729, 469366, 234683, 117342, 58671, 29335, 14668, 7334, 3667,
    1833, 917, 458, 229, 115, 57, 29, 14, 7, 4, 2, 1
};

int vectoring_mode(int x, int y, int z){
    // the more iterative process the more percise it is
    int x_new;
    int y_new;
    int i;
    for(i=0; i<29; i++){
        if(y >= 0){
            x_new = x + (y >> i); 
            y_new = y - (x >> i); 
            z += ARCTAN[i];
        }else{       
            x_new = x - (y >> i); 
            y_new = y + (x >> i); 
            z -= ARCTAN[i];
        }
        x = x_new;
        y = y_new;
    }
    printf("arctan: %lf\n", z/SCALE_CONST);
}

int rotational_mode(int x, int y, int z){
    // the more iterative process the more percise it is
    int x_new;
    int y_new;
    int i;
    for(i=0; i<29; i++){
        if(z < 0){
            x_new = x + (y >> i);
            y_new = y - (x >> i);
            z += ARCTAN[i];
        }else{       
            x_new = x - (y >> i);
            y_new = y + (x >> i);
            z -= ARCTAN[i];
        }
        x = x_new;
        y = y_new;
    }
    printf("sine: %lf, cosine: %lf\n", y/SCALE_CONST/A_CONST, x/SCALE_CONST/A_CONST);
}   

int main(int argc, char** argv) {
    // (x, y, 0)
    // Testbench
    int z = 0;
    int x = 1*SCALE_CONST;
    int y = 1*SCALE_CONST;
    printf("\nVectoring mode: \n");
    printf("x: 1, y: 1\n");
    vectoring_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 1.7320508075688772935274*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: 1, y: sqrt(3)\n");
    vectoring_mode(x, y, z);
    x = 1.7320508075688772935274*SCALE_CONST;
    y = 1*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: sqrt(3), y: 1\n");
    vectoring_mode(x, y, z);
    x = 2*SCALE_CONST;
    y = 1*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: 2, y: 1\n");
    vectoring_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 2*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("x: 1, y: 2\n");
    vectoring_mode(x, y, z);

    printf("\nRotaional_mode: \n");
    // (1, 0, z)
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 0*SCALE_CONST;
    printf("z: 0\n");
    rotational_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 30*SCALE_CONST;
    printf("z: 30\n");
    rotational_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 45*SCALE_CONST;
    printf("z: 45\n");
    rotational_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 70*SCALE_CONST;
    printf("z: 70\n");
    rotational_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 80*SCALE_CONST;
    printf("z: 80\n");
    rotational_mode(x, y, z);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 90*SCALE_CONST;
    printf("z: 90\n");
    rotational_mode(x, y, z);
    return (EXIT_SUCCESS);
}
