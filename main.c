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

int ARCTAN[30] = {
    536870913, 316933406, 167458908, 85004756, 
    42667331, 21354465, 10679838, 5340245, 2670163, 
    1335087, 667544, 333772, 166886, 83443, 41722, 
    20861, 10430, 5215, 2608, 1304, 652, 326, 163, 
    81, 41, 20, 10, 5, 3, 1
};

int cordic(int x, int y, int i, int* angle_sum, int* arctan){
    // the more iterative process the more percise it is
    int x_new;
    int y_new;
    if(y >= 0){
        x_new = x + (y >> i);
        y_new = y - (x >> i);
        *angle_sum += arctan[i];
    }else{       
        x_new = x - (y >> i);
        y_new = y + (x >> i);
        *angle_sum -= arctan[i]; 
    }
    printf("x: %i ,y: %i ,i: %i ,angle_sum: %i\n", x, y, i , *angle_sum);
    if(i+1<30){
        cordic(x_new, y_new, i+1, angle_sum, arctan);
        return;
    } else {
        return;
    }
}

int rotational(int x, int y, int* z, int i, int* arctan){
    // the more iterative process the more percise it is
    int x_new;
    int y_new;
    int z_new;
    if(*z < 0){
        x_new = x + pow(2,-i)*y;
        y_new = y - pow(2,-i)*x;
        z_new = *z + ARCTAN[i];
    }else{       
        x_new = x - pow(2,-i)*y;
        y_new = y + pow(2,-i)*x;
        z_new = *z - ARCTAN[i];
    }
    printf("x: %lf ,y: %lf ,i: %i ,angle_sum: %i\n", (float)x_new/pow(2,32), (float)y_new/pow(2,32), i , z_new);
    if(i+1<30){
        rotational(x_new, y_new, &z_new, i+1, arctan);
        return;
    } else {
        return;
    }
}
    

int storeArctanTable(int* arctan){
    #define PI 3.14159265
    signed int i = 0;
    double result;
    double result2;
    
    for(i = 0; i < 30; i++){
        result = atan(pow(2, -i))*180.0/PI;     
        result2 = result*pow(2,32);
        //result2 = result*256;
        arctan[i] = round(result2);
        printf("%lf\n", result2);
    }
}
/*
 * 
 */
int main(int argc, char** argv) {
    int arctan[30];
    int i, z_sum=0;
    storeArctanTable(arctan);
    printf("Finished storing arctan lookup table\n");
    for(i = 0; i < 30; i++){
        printf("%i\n", arctan[i]);
    }
    //cordic(1024, 1024, 1, &z_sum, arctan);
    rotational(1024, 1024, &z_sum, 1, arctan);
    printf("z is %i\nAngle is %lf", z_sum,  ((float)z_sum/pow(2,32)));//(float)z_sum/256.0);
    return (EXIT_SUCCESS);
}

