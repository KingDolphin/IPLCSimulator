#Analysis

Given the choice for 4 cache sizes, 3 block sizes, 3 associativity, and 2 branch 
conditions, there is a total of 72 possible configurations of the simulator. The 
configuration with the fastest CPI(1.068052) is 4 cache size, 4 block size and 
4-way associativitywith no branch taken. While keeping the instruction file constant, 
the same configuration also has the lowest miss rate of.2175%. This lead us to the 
conclusion that the best performing configuration for our project was the 4 cache index
bit, 4 word block size, and 4-way set associativity with branches not taken. 
The word “best” is used cautiously because if the cache size limit had been different, 
the best performing configuration may be different.

On the other hand, the worst performance configuration is a tie between 1-1-1 (branch
not taken) and 1-1-1 (branch taken). This should be no surprise to anyone because
there is a clear negative association between the size of the cache, associativity and 
blocksize. The factor that seem to affect the performance the most is block size.
