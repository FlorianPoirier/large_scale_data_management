# Large Scale Data Management

## Authors

POIRIER Florian\
FORTINEAU Romain\
BOIS Jean-Maël

## Running

See `cmd.txt` file

Spark is launched with partitionned data by default. If you want to launch with unpartitionned data, put lines 84, 85 and 86 as comments.

## Results

We decided to make 3 runs for each node in order to have an accurate benchmark for the page_links_en.nt.bz2 file.

In the following table, we have results for small_page_links.nt data file and page_links_en.nt.bz2 (with and without partitionning).

![](result/results.png)

The capacity allocated to the machines was not sufficient to allow execution on a single Spark node.

We have made a graph to visualize the average execution time for each node. 

![](result/graphResults.png)



## Conclusion

In conclusion, we can see that Spark is faster than Pig on the big data files (page_links_en.nt). Besides, with partitionning, Spark is faster.
