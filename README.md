# microtiterr

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![BSD License](https://img.shields.io/badge/license-BSD-brightgreen.svg)](https://opensource.org/licenses/BSD-2-Clause)
[![Travis-CI Build Status](https://travis-ci.org/briandconnelly/microtiterr.svg?branch=master)](https://travis-ci.org/briandconnelly/microtiterr)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/microtiterr)](https://cran.r-project.org/package=microtiterr)

## Overview

microtiterr provides some tools that make working with microtiter plate data a bit easier.
This includes translating rows and columns, making data frames, and more.

### List of Functions

- `is.well` - Determine if the given label (e.g., "A4") is a valid well label
- `microtiter_data_frame` - Create a data frame to represent microtiter plate data with a row for each well
- `microtiter_tibble` - Create a [tibble](https://cran.r-project.org/web/packages/tibble/index.html) to represent microtiter plate data with a row for each well
- `row_letters` - Get the letter associated with the given row number(s)
- `well_column` - Get the column number from the given well label
- `well_label` - Get the label (e.g., "A4") associated with the given row and column number
- `well_row` - Get the row number from the given well label

Most functions will work with more than one input value. For example:

```r
    well_column(c("A4", "B5", "D7"))
```

will return 4, 5, 7.


## Installation

microtiterr is not quite ready to be available on [CRAN](http://cran.r-project.org), but you can use [devtools](http://cran.r-project.org/web/packages/devtools/index.html) to install the current development version:
                                                                                
```r                                                                           
    if(!require("devtools")) install.packages("devtools")
    devtools::install_github("briandconnelly/microtiterr")
```


## Related Tools

- [plater](https://github.com/ropenscilabs/plater) - Provides a nice interface for importing and combining data as data frames ([CRAN](https://cran.r-project.org/package=plater))
- [ggplot2bdc](https://github.com/briandconnelly/ggplot2bdc) - Includes a theme for [ggplot2](https://cran.r-project.org/package=ggplot2), [`theme_bdc_microtiter`](https://github.com/briandconnelly/ggplot2bdc#theme_bdc_microtiter), for plotting microtiter plate data.



## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md).
By participating in this project in any way, you agree to abide by its terms.
