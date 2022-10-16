# Large Scale Data Management

## Authors

POIRIER Florian\
FORTINEAU Romain\
BOIS Jean-Maël

## Running

See `cmd.txt` file

Spark is launch with partitionned data by default. If you want to launch with unpartitionned data, put lines 84, 85 and 86 as comments.

## Results

In the following table, we have the results for small_page_links.nt data file and page_links_en.nt.bz2 (with and without partitionning).

![](result/result.png)

## Conclusion

In conclusion, we can see that Spark is faster than Pig on the big data files (page_links_en.nt). Besides, with partitionning, Spark is faster.
