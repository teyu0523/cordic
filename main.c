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
//need to put this somewhere else

//All bits are calculated by degree*2^32/360 where each index representing "i" of 2^-i = tan(theta)
//Each calculation is stored so that the first 2 bits representing the location in 360 degree.
//      00 indicates the range between 0 and pi/2
//      01 indicates the range between pi/2 and pi
//      10 indicates the range between pi and 3pi/2
//      11 indicates the range between 3pi/2 and 2pi
/*int32_t ARCTAN[] = {
    0010 0000 0000 0000 0000 0000 0000 0000,
    0001 0010 1110 0100 0000 0101 0001 1101,
    0110 0011 1101 0000 0011 0011 1001 0011,
    0011 0010 1010 1010 1011 0010 0100 1010,
    0001 1001 0110 1110 1000 0100 1001 1111,
    0111 1111 0100 1000 0101 0100 0000 1001,
};*/

long ARCTAN[30] = {
    536870913, 316933406, 167458908, 85004756, 
    42667331, 21354465, 10679838, 5340245, 2670163, 
    1335087, 667544, 333772, 166886, 83443, 41722, 
    20861, 10430, 5215, 2608, 1304, 652, 326, 163, 
    81, 41, 20, 10, 5, 3, 1
};

int vectoring_mode(float x, float y){
    // the more iterative process the more percise it is
    float x_new;
    float y_new;
    long z_new;
    int i;
    for(i=0; i<30; i++){
        if(y >= 0){
            x_new = x + (pow(2,-i)*y);
            y_new = y - (pow(2,-i)*x);
            z_new += ARCTAN[i];
        }else{       
            x_new = x - (pow(2,-i)*y);
            y_new = y + (pow(2,-i)*x);
            z_new -= ARCTAN[i];
        }
        x = x_new;
        y = y_new;
        printf("x: %lf ,y: %lf ,i: %i ,z: %lu\n", x_new, y_new, i , z_new>>22);
    }
}

int rotational_mode(float x, float y){
    // the more iterative process the more percise it is
    float x_new;
    float y_new;
    int i;
    long z_new;
    for(i=0; i<30; i++){
        if(z_new < 0){
            x_new = x + (pow(2,-i)*y);
            y_new = y - (pow(2,-i)*x);
            z_new += ARCTAN[i];
        }else{       
            x_new = x - (pow(2,-i)*y);
            y_new = y + (pow(2,-i)*x);
            z_new -= ARCTAN[i];
        }
        printf("x: %lf ,y: %lf ,i: %i ,z: %lu\n", x_new/pow(2,22), y_new/pow(2,22), i , z_new>>22);
    }
    /*if(i+1<30){
        rotational_mode(x_new, y_new, i+1);
        return;
    } else {
        return;
    }*/
}   

int storeArctanTable(long arctan[30]){
    #define PI 3.14159265
    int i = 0;
    double result;
    long result2;
    
    for(i = 0; i < 30; i++){
        result = atan(pow(2, -i))*180.0/PI;     
        result2 = round(result*pow(2,22));
        //result2 = result*256;
        arctan[i] = result2;
        printf("%lu \n", result2);
    }
}

/*
 * 
 */
int main(int argc, char** argv) {
    int i;
    long arctan[30];
    storeArctanTable(ARCTAN);
    //ARCTAN = arctan;
    //float x=*argv[0] ,y=*argv[1] ,z=*argv[2];
    float z=0;
    printf("---------------------------------\n");   
    printf("\nVectoring mode: \n");
    vectoring_mode(0, 0);
    printf("\nRotaional_mode: \n");
    rotational_mode(0, 0);
    return (EXIT_SUCCESS);
}

