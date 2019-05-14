# Installation and troubleshooting guide

The workshop *Introduction to R & Data* makes use of R and Rstudio. 
Also, the R package `tidyverse` is used. This document shows how to install 
R and RStudio. 

Most workshops on R programming make use of an RStudio server. With an RStudio
server, the participant logs in onto the website and gets a web based RStudio
IDE. We prefer a local installation of RStudio for our workshop. We hope that 
this removes a barrier for users to start working with R themselves.

# Installation

## Install R and RStudio on a personal laptop.

I.e. a laptop *with* administrator rights.

1) Install R from https://cran.rstudio.com/

2) Install Rstudio from https://www.rstudio.com/products/rstudio/download/#download

## Install R and RStudio on a Utrecht University laptop. 

1) Open **Software Center**
2) Install **R for Windows**

Installing R packages on a Utrecht University laptop can be hard. This is because R packages are installed on a so-called 'mounted' drive. This causes problems with the performance. Check the installation 

3) Open **RStudio**
4) Write the following line of code in your console: `.libPaths()`
5) If this line of code starts with `//` or `\\`, you are installing on a mounted drive. Follow the steps below to change the installation location. 

# Troubleshooting

## Installing Tidyverse takes ages

Your packages are being installed on a mounted drive. 

Solution:

- Create a folder `R-packages` on a local drive. 
- Copy the location to that drive. For example: `C:/Users/User/R-packages`.
- Run the following line of code: `file.edit(file.path("~", ".Rprofile"))`
- Paste `.libPaths("C:/Users/User/R-packages")` in the editor and save the file.
- Restart your R session
- Click on `Packages`>`Install`. Is `Install to library` pointing to `C:/Users/User/R-packages`?

## Tidyverse installation is aborted

If the installation of tidyverse is aborted, and packages are downloaded but their installation is said to have "non zero exit status", you may be dealing with an old version of R. Update R by installing a recent version from [CRAN](https://cran.rstudio.com/). Then try installing tidyverse again.


## Virusscanner blocks installation

Do you get issues like this: 

```
> install.packages("tibble")
Installing package into ‘C:/Users/UserName/R’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.4/tibble_1.4.2.zip'
Content type 'application/zip' length 172649 bytes (168 KB)
downloaded 168 KB

package ‘tibble’ successfully unpacked and MD5 sums checked
Warning in install.packages :
  unable to move temporary installation ‘C:\Users\UserName\R\file18b813387562\tibble’ to ‘C:\Users\UserName\R\tibble’
The downloaded binary packages are in
C:\Users\UserName\AppData\Local\Temp\RtmpYh5ogU\downloaded_packages
```

Check for the line **unable to move temporary installation**.

The solution can be found here: https://code.adonline.id.au/unable-to-move-temporary-installation-r/

```
> trace(utils:::unpackPkgZip, edit=TRUE)
Tracing function "unpackPkgZip" in package "utils (not-exported)"
[1] "unpackPkgZip"
```

Change 0.5 in line 142 to 2.5 and install the package again.

## Library(tidyverse) loading failed

You see the following error:
```
Error: package or namespace load failed for 'tidyverse'in loadNamespace(...)
namespace 'bindrcpp' 0.2 is being loaded, but >= 0.2.0.9000 is required.
```
Run `install.packages("bindrcpp")`to update this package.

```
Error: package or namespace load failed for 'tidyverse'in loadNamespace(...)
there is no package called (xxx)
```
The same solution as above applies: run `install.packages()` to add whatever package is missing. (At the time of writing, it is not clear why these packages are missing; this error was received over email.)
