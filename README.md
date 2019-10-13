# badsoRts <img src='man/figures/logo.png' align="right" height="120" />
*Maciej Bak*  
*Swiss Institute of Bioinformatics*

<!-- badges: start -->
<!-- badges: end -->

The goal of this R package is to provide the user with a few simple functions
that implement highly inefficient sorting algorithms:

* Bogosort (https://en.wikipedia.org/wiki/Bogosort)
* Bozosort (http://www.cs.toronto.edu/~guerzhoy/180/lectures/W10/lec3/Bozosort.html)
* Stooge sort (https://en.wikipedia.org/wiki/Stooge_sort)
* Slowsort (http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.116.9158)
* Bogobogosort (http://www.dangermouse.net/esoteric/bogobogosort.html)


## Installation

### From GitHub:

The package can be installed directly from my github with `devtools` R package:

```r
install.packages("devtools")
library(devtools)
install_github("AngryMaciek/badsoRts")
```

### With conda:

If you manage your software with `conda` then this package is also available there:

```bash
conda install -c angrymaciek badsorts
```

## Info:

To inspect all available functions type:

```r
library(badsoRts)
lsf.str("package:badsoRts")
```

To learn about a specific function type:

```r
?{FUNCTION}
```


## License

GNU General Public License v3.0
