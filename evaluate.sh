#! /bin/sh

mkdir comparisons
for cache_size in 1 2 3 4
do 
	for block_size in 1 2 4
	do
		for associativity in 1 2 4
		do
			for taken in 0 1
			do
				echo "instruction-trace.txt $cache_size $block_size $associativity $taken" | ./a.out > "comparisons/$cache_size-$block_size-$associativity-$taken.txt"
			done
		done
	done
done

grep -rnw 'comparisons' -e 'Total Cycles is' > cycles.txt

sort -g -k 5 cycles.txt
