# Large Scale Data Management

## Authors

POIRIER Florian\
FORTINEAU Romain\
BOIS Jean-Maël

## Running

See `cmd.txt` file

Spark is launched with partitionned data by default. If you want to launch with unpartitionned data, put lines 84, 85 and 86 as comments.

## Results

We decided to make 3 runs for each node in order to have a accurate benchmark possible for the page_links_en.nt.bz2 file.

In the following table, we have the results for small_page_links.nt data file and page_links_en.nt.bz2 (with and without partitionning).

![](result/result.png)

The capacity allocated to the machines was not sufficient to allow execution on a Spark node.

We have made a graph to visualize the average execution time for each node. 

![](result/graphResult.png)



## Conclusion

In conclusion, we can see that Spark is faster than Pig on the big data files (page_links_en.nt). Besides, with partitionning, Spark is faster.
