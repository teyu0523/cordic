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


/*
 * Perform sine, cosine, and etc 
 */
int operations(){
    // should be using only addition and subtraction with shifting.
    
    // cos(Q) = 1/sqrt(1+tan(Q)^2) = 1/sqrt(1+(+-2^-i)^2) = Ki 
    
    // 
    
}

int cordic(){
    // the more iterative process the more percise it is
}

int getBitShiftValues(){
    #define PI 3.14159265
    /*signed int i = 0;
    double result;
    double result2;
    char str[31];
    for(i = 0; i < 30; i++){
        if(i==0){
                result = atan(1)*180.0/PI;       
        }else{
                result = atan(pow(2, -i))*180.0/PI;     
        }
        result2 = result*pow(2,32)/360;
        printf("%lf   %lf\n", result2, result);
    }*/
}
/*
 * 
 */
int main(int argc, char** argv) {
    
    return (EXIT_SUCCESS);
}

