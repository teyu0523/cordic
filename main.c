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

long ARCTAN[30] = {
    188743680, 111421901, 58872272, 29884485, 15000234, 7507429, 3754631, 
    1877430, 938729, 469366, 234683, 117342, 58671, 29335, 14668, 7334, 3667,
    1833, 917, 458, 229, 115, 57, 29, 14, 7, 4, 2, 1, 0 
};

int vectoring_mode(long x, long y, long *z){
    // the more iterative process the more percise it is
    long x_new;
    long y_new;
    int i;
    for(i=0; i<30; i++){
        if(y >= 0){
            x_new = x + (y >> i); 
            y_new = y - (x >> i); 
            *z += ARCTAN[i];
        }else{       
            x_new = x - (y >> i); 
            y_new = y + (x >> i); 
            *z -= ARCTAN[i];
        }
        x = x_new;
        y = y_new;
        
    }
    
}

int rotational_mode(long *x, long *y, long z){
    // the more iterative process the more percise it is
    long x_new;
    long y_new;
    int i;
    for(i=0; i<30; i++){
        if(z < 0){
            x_new = *x + (*y >> i);
            y_new = *y - (*x >> i);
            z += ARCTAN[i];
        }else{       
            x_new = *x - (*y >> i);
            y_new = *y + (*x >> i);
            z -= ARCTAN[i];
        }
        *x = x_new;
        *y = y_new;
    }
}   

int main(int argc, char** argv) {
    long z = 0;
    long x = 1;
    long y = 1;
    printf("\nVectoring mode: \n");
    // (x, y, 0)
    vectoring_mode(x*SCALE_CONST, y*SCALE_CONST, &z);
    printf("arctan: %lf\n", z/SCALE_CONST);
    printf("\nRotaional_mode: \n");
    // (1, 0, 30)
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = ARCTAN[0];
    rotational_mode(&x, &y, z);
    printf("sine: %lf, cosine: %lf\n", x/SCALE_CONST/A_CONST, y/SCALE_CONST/A_CONST);
    return (EXIT_SUCCESS);
}

