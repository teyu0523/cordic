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
#define A_CONST 1.646760


int vectoring_mode(int x, int y, int *  z){
    // the more iterative process the more percise it is

    int ARCTAN[] = {
        188743680, 111421900, 58872272, 29884485, 15000234, 7507429, 3754631, 
        1877430, 938729, 469366, 234683, 117342, 58671, 29335, 14668, 7334,
        3667, 1833, 917, 458, 229, 115, 57, 29, 14, 7, 4, 2, 1
    };
    register int local_z = *z;

    int x_new;
    int y_new;
    int i;
    for(i-=i; i<27; i+=9){
        //iteration 0
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

        //iteration 1
        if(y >= 0){
            x_new = x + (y >> (i+1)); 
            y_new = y - (x >> (i+1)); 
            local_z += ARCTAN[(i+1)];
        }else{       
            x_new = x - (y >> (i+1)); 
            y_new = y + (x >> (i+1)); 
            local_z -= ARCTAN[(i+1)];
        }
        x = x_new;
        y = y_new;

        //iteration 2
        if(y >= 0){
            x_new = x + (y >> (i+2)); 
            y_new = y - (x >> (i+2)); 
            local_z += ARCTAN[(i+2)];
        }else{       
            x_new = x - (y >> (i+2)); 
            y_new = y + (x >> (i+2)); 
            local_z -= ARCTAN[(i+2)];
        }
        x = x_new;
        y = y_new;

        //iteration 3
        if(y >= 0){
            x_new = x + (y >> (i+3)); 
            y_new = y - (x >> (i+3)); 
            local_z += ARCTAN[(i+3)];
        }else{       
            x_new = x - (y >> (i+3)); 
            y_new = y + (x >> (i+3)); 
            local_z -= ARCTAN[(i+3)];
        }
        x = x_new;
        y = y_new;

        //iteration 4
        if(y >= 0){
            x_new = x + (y >> (i+4)); 
            y_new = y - (x >> (i+4)); 
            local_z += ARCTAN[(i+4)];
        }else{       
            x_new = x - (y >> (i+4)); 
            y_new = y + (x >> (i+4)); 
            local_z -= ARCTAN[(i+4)];
        }
        x = x_new;
        y = y_new;

        //iteration 5
        if(y >= 0){
            x_new = x + (y >> (i+5)); 
            y_new = y - (x >> (i+5)); 
            local_z += ARCTAN[(i+5)];
        }else{       
            x_new = x - (y >> (i+5)); 
            y_new = y + (x >> (i+5)); 
            local_z -= ARCTAN[(i+5)];
        }
        x = x_new;
        y = y_new;

        //iteration 6
        if(y >= 0){
            x_new = x + (y >> (i+6)); 
            y_new = y - (x >> (i+6)); 
            local_z += ARCTAN[(i+6)];
        }else{       
            x_new = x - (y >> (i+6)); 
            y_new = y + (x >> (i+6)); 
            local_z -= ARCTAN[(i+6)];
        }
        x = x_new;
        y = y_new;

        //iteration 7
        if(y >= 0){
            x_new = x + (y >> (i+7)); 
            y_new = y - (x >> (i+7)); 
            local_z += ARCTAN[(i+7)];
        }else{       
            x_new = x - (y >> (i+7)); 
            y_new = y + (x >> (i+7)); 
            local_z -= ARCTAN[(i+7)];
        }
        x = x_new;
        y = y_new;

        //iteration 8
        if(y >= 0){
            x_new = x + (y >> (i+8)); 
            y_new = y - (x >> (i+8)); 
            local_z += ARCTAN[(i+8)];
        }else{       
            x_new = x - (y >> (i+8)); 
            y_new = y + (x >> (i+8)); 
            local_z -= ARCTAN[(i+8)];
        }
        x = x_new;
        y = y_new;
    }
    //second last iteration
    if(y >= 0){
        x_new = x + (y >> (i)); 
        y_new = y - (x >> (i)); 
        local_z += ARCTAN[(i)];
    }else{       
        x_new = x - (y >> (i)); 
        y_new = y + (x >> (i)); 
        local_z -= ARCTAN[(i)];
    }
    x = x_new;
    y = y_new;

    //last iteration
    if(y >= 0){
        x_new = x + (y >> (i+1)); 
        y_new = y - (x >> (i+1)); 
        local_z += ARCTAN[(i+1)];
    }else{       
        x_new = x - (y >> (i+1)); 
        y_new = y + (x >> (i+1)); 
        local_z -= ARCTAN[(i+1)];
    }
    x = x_new;
    y = y_new;
    *z = local_z;
}

int rotational_mode(int *  x, int *  y, int z){
    // the more iterative process the more percise it is

    int ARCTAN[] = {
        188743680, 111421900, 58872272, 29884485, 15000234, 7507429, 3754631, 
        1877430, 938729, 469366, 234683, 117342, 58671, 29335, 14668, 7334,
        3667, 1833, 917, 458, 229, 115, 57, 29, 14, 7, 4, 2, 1
    };
    register int local_x = *x;
    register int local_y = *y;
    int x_new;
    int y_new;
    int i;
    for(i-=i; i<27; i+=9){
        //iteration 0
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

        //iteration 1
        if(z < 0){
            x_new = local_x + (local_y >> (i+1));
            y_new = local_y - (local_x >> (i+1));
            z += ARCTAN[i+1];
        }else{       
            x_new = local_x - (local_y >> (i+1));
            y_new = local_y + (local_x >> (i+1));
            z -= ARCTAN[i+1];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 2
        if(z < 0){
            x_new = local_x + (local_y >> (i+2));
            y_new = local_y - (local_x >> (i+2));
            z += ARCTAN[i+2];
        }else{       
            x_new = local_x - (local_y >> (i+2));
            y_new = local_y + (local_x >> (i+2));
            z -= ARCTAN[i+2];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 3
        if(z < 0){
            x_new = local_x + (local_y >> (i+3));
            y_new = local_y - (local_x >> (i+3));
            z += ARCTAN[i+3];
        }else{       
            x_new = local_x - (local_y >> (i+3));
            y_new = local_y + (local_x >> (i+3));
            z -= ARCTAN[i+3];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 4
        if(z < 0){
            x_new = local_x + (local_y >> (i+4));
            y_new = local_y - (local_x >> (i+4));
            z += ARCTAN[i+4];
        }else{       
            x_new = local_x - (local_y >> (i+4));
            y_new = local_y + (local_x >> (i+4));
            z -= ARCTAN[i+4];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 5
        if(z < 0){
            x_new = local_x + (local_y >> (i+5));
            y_new = local_y - (local_x >> (i+5));
            z += ARCTAN[i+5];
        }else{       
            x_new = local_x - (local_y >> (i+5));
            y_new = local_y + (local_x >> (i+5));
            z -= ARCTAN[i+5];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 6
        if(z < 0){
            x_new = local_x + (local_y >> (i+6));
            y_new = local_y - (local_x >> (i+6));
            z += ARCTAN[i+6];
        }else{       
            x_new = local_x - (local_y >> (i+6));
            y_new = local_y + (local_x >> (i+6));
            z -= ARCTAN[i+6];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 7
        if(z < 0){
            x_new = local_x + (local_y >> (i+7));
            y_new = local_y - (local_x >> (i+7));
            z += ARCTAN[i+7];
        }else{       
            x_new = local_x - (local_y >> (i+7));
            y_new = local_y + (local_x >> (i+7));
            z -= ARCTAN[i+7];
        }
        local_x = x_new;
        local_y = y_new;

        //iteration 8
        if(z < 0){
            x_new = local_x + (local_y >> (i+8));
            y_new = local_y - (local_x >> (i+8));
            z += ARCTAN[i+8];
        }else{       
            x_new = local_x - (local_y >> (i+8));
            y_new = local_y + (local_x >> (i+8));
            z -= ARCTAN[i+8];
        }
        local_x = x_new;
        local_y = y_new;
    }
    //second last
    if(z < 0){
        x_new = local_x + (local_y >> (i));
        y_new = local_y - (local_x >> (i));
        z += ARCTAN[i];
    }else{       
        x_new = local_x - (local_y >> (i));
        y_new = local_y + (local_x >> (i));
        z -= ARCTAN[i];
    }
    local_x = x_new;
    local_y = y_new;
    //last
    if(z < 0){
        x_new = local_x + (local_y >> (i+1));
        y_new = local_y - (local_x >> (i+1));
        z += ARCTAN[i+1];
    }else{       
        x_new = local_x - (local_y >> (i+1));
        y_new = local_y + (local_x >> (i+1));
        z -= ARCTAN[i+1];
    }
    local_x = x_new;
    local_y = y_new;
    *x = local_x;
    *y = local_y;
}

int main(int argc, char** argv) {

    int z = 0;
    int x = 1*SCALE_CONST;
    int y = 1*SCALE_CONST;
    // (x, y, 0)
    // Testbench
    printf("\nVectoring mode: \n");
    vectoring_mode(x, y, &z);
    printf("x: 1, y: 1, arctan: %lf\n", z/SCALE_CONST);
    x = 1*SCALE_CONST;
    y = 1.7320508075688772935274*SCALE_CONST;
    z = 0*SCALE_CONST;
    vectoring_mode(x, y, &z);
    printf("x: 1, y: sqrt(3), arctan: %lf\n", z/SCALE_CONST);

    printf("\nRotaional_mode: \n");
    // (1, 0, z)
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 0*SCALE_CONST;
    rotational_mode(&x, &y, z);
    printf("z: 0, sine: %lf, cosine: %lf\n", y/SCALE_CONST/A_CONST, x/SCALE_CONST/A_CONST);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 45*SCALE_CONST;
    rotational_mode(&x, &y, z);
    printf("z: 45, sine: %lf, cosine: %lf\n", y/SCALE_CONST/A_CONST, x/SCALE_CONST/A_CONST);
    x = 1*SCALE_CONST;
    y = 0*SCALE_CONST;
    z = 90*SCALE_CONST;
    rotational_mode(&x, &y, z);
    printf("z: 90, sine: %lf, cosine: %lf\n", y/SCALE_CONST/A_CONST, x/SCALE_CONST/A_CONST);
    return (EXIT_SUCCESS);
}
