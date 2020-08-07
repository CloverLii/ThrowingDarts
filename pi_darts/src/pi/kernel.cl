// OpenCL kernel 'throwDarts' using float type
__kernel void throwDarts(__global int *seeds,        
                     const int repeats,    
                     __global int *output){  
        int gid = get_global_id(0);
        int rand = seeds[gid];
        
        for (int iter = 0; iter < repeats; iter++) {                
                rand = 1103515245 * rand + 12345;
                float xPos = ((float) (rand & 0xFFFFFF)) / 0x1000000;
                rand = 1103515245 * rand + 12345;
                float yPos = ((float) (rand & 0xFFFFFF)) / 0x1000000;
                if (xPos * xPos + yPos * yPos < 1.0 ){
                    output[gid]++;
                }
            }
                                        
}

// OpenCL kernel 'throwDarts' using integer type
__kernel void throwDartsInt(__global int *seeds,
                     const int repeats,
                     __global int *output){
    int gid = get_global_id(0);
    int rand = seeds[gid];
            for (int iter = 0; iter < repeats; iter++) {                
                rand = 1103515245 * rand + 12345;
                int xPos = ((int) (rand & 0xFFFFFF)) / 0x1000000;
                rand = 1103515245 * rand + 12345;
                int yPos = ((int) (rand & 0xFFFFFF)) / 0x1000000;
                if (xPos * xPos + yPos * yPos < 1 ){
                    output[gid]++;
                }
            }

}

// Optional: OpenCL kernel 'throwDarts' using double type
// Implement this function only if your GPU supports double type.
__kernel void throwDartsDouble(__global int *seeds,
                     const int repeats,
                     __global int *output){
    int gid = get_global_id(0);
    int rand = seeds[gid];
            for (int iter = 0; iter < repeats; iter++) {                
                rand = 1103515245 * rand + 12345;
                double xPos = ((double) (rand & 0xFFFFFF)) / 0x1000000;
                rand = 1103515245 * rand + 12345;
                double yPos = ((double) (rand & 0xFFFFFF)) / 0x1000000;
                if (xPos * xPos + yPos * yPos < 1.00 ){
                    output[gid]++;
                }
            }

}
