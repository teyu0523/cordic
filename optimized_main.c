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

#define SCALE_CONST 33554432.0000
#define A_CONST 1.646760


int vectoring_mode(int x, int y, int *z){
    // the more iterative process the more percise it is

    int ARCTAN[] = {
    1509949442, 891375204, 470978178, 239075877, 120001869, 60059434, 30037045, 15019439,
    7509834, 3754931, 1877468, 938734, 469367, 234684, 117342, 58671, 29335, 14668, 7334,
    3667, 1833, 917, 458, 229, 115, 57, 29, 14, 7, 4, 2, 1
    };
    register int local_z = *z;

    int x_new;
    int y_new;
    int i;
    for(i=0; i<32; i++){
        if(y >= 0){
            x_new = x + (y >> i); 
            y_new = y - (x >> i); 
            local_z += ARCTAN[i];
        }else{       
            x_new = x - (y >> i); 
            y_new = y + (x >> i); 
            local_z -= ARCTAN[i];
        }
        x = x_new;
        y = y_new;
    }

    *z = local_z;
}

int rotational_mode(int *x, int *y, int z){
    // the more iterative process the more percise it is

    int ARCTAN[] = {
    1509949442, 891375204, 470978178, 239075877, 120001869, 60059434, 30037045, 15019439,
    7509834, 3754931, 1877468, 938734, 469367, 234684, 117342, 58671, 29335, 14668, 7334,
    3667, 1833, 917, 458, 229, 115, 57, 29, 14, 7, 4, 2, 1
    };
    register int local_x = *x;
    register int local_y = *y;

    int x_new;
    int y_new;
    int i;
    for(i=0; i<32; i++){
        if(z < 0){
            x_new = local_x + (local_y >> i);
            y_new = local_y - (local_x >> i);
            z += ARCTAN[i];
        }else{       
            x_new = local_x - (local_y >> i);
            y_new = local_y + (local_x >> i);
            z -= ARCTAN[i];
        }
        local_x = x_new;
        local_y = y_new;
    }

    *x = local_x;
    *y = local_y;
}

int main(int argc, char** argv) {

    int z = 0;
    int x = 1*SCALE_CONST;
    int y = 1*SCALE_CONST;
    printf("\nVectoring mode: \n");
    // (x, y, 0)
    vectoring_mode(x, y, &z);
    printf("arctan: %lf\n", z/SCALE_CONST);
    printf("\nRotaional_mode: \n");
    // (1, 0, z)
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 1509949442;
    rotational_mode(&x, &y, z);
    printf("sine: %lf, cosine: %lf\n", x/SCALE_CONST/A_CONST, y/SCALE_CONST/A_CONST);
    return (EXIT_SUCCESS);
}
