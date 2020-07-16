# Workshop: Introduction to R & data

This repository contains the documentation, exercises and datasets of the single day workshop ['Introduction to R & data'](https://www.uu.nl/en/research/research-data-management/training-workshops/introduction-to-r-data) at Utrecht University.
The workshop is organised by [Research Data Management Support](https://www.uu.nl/en/research/research-data-management).

## Workshop description

R is a powerful scripting language for data handling, data visualization, and statistics.
In this workshop, we aim to give you the tools to start exploring R and all it has to offer by yourself.

The course will take you from the very basics in R syntax, to data handling and visualization using a set of packages designed for data science, known as the ‘tidyverse’.
We will also take some time to understand datasets and their architecture, preparing you to handle your own data in a clean, robust, and reproducible manner.
We will work in RStudio and introduce R scripts as well as the R Markdown format: the latter is a great way to combine code and its output with text, allowing you to code in a narrative and intuitive way.
Moreover, this way you produce a human-readable document with which you can easily share and showcase your work.

## Upcoming workshops
Check [uu.nl/rdm](https://www.uu.nl/en/research/research-data-management/training-workshops/introduction-to-r-data) for upcoming workshops.
Registration is mandatory, and opens 2 months in advance of the course.

## Installation requirements
This course requires three things to be installed:
- The language **R**
- The IDE **Rstudio**
- The packages in **tidyverse**

Information on how to install these (and troubleshoot the installation) is on our [installation guide](installation.md).

## Schedule

All activities in _cursive_ (during the morning session) are done independently, using videos and exercises provided.
We are always available for 1:1 support during these times, and reconvene in the main channel at stated times.

| Time | Activity |
|---:|:---|
| 9:00 | Walk-in, tech support |
| 9:30 | Introductions |
| 10:00 | _Exercises 1-6_ |
| 11:25 | Recap & Questions |
| **11:30** | **Coffee break** |
| 11:45 | _Exercises 7-9_ |
| 12:40 | Recap & Questions |
| **12:45** | **Lunch break** |
| 13:30 | Introduction to Tidyverse & Importing data |
| 13:45 | Exercises 1-4 |
| 14:15 | Subsetting and mutating data |
| 14:30 | Exercises 5-8 |
| **15:00** | **Coffee break** |
| 15:15 | Transformations & tidy data |
| 15:30 | Exercises 9-12 |
| 16:00 | Data visualization |
| 16:15 | Exercises 13-15 |
| 17:00 | Final recap and closing |

## Material
[Download a zipped file of the workshop material](https://github.com/UtrechtUniversity/workshop-introduction-to-R-and-data/archive/master.zip).
Move it to an accessible place on your system, and unzip.

### Slides
- [Introduction to R](slides/slides_introduction.html)
- [Data science with Tidyverse](slides/slides_tidyverse.pdf)

### Exercises & solutions
- Exercises morning: [baseR_exercises.Rmd](baseR_exercises.Rmd)
- Solutions morning: see [slides](slides/slides_introduction.html)
- Exercises afternoon: [datascience_exercises.Rmd](datascience_exercises.Rmd)
- Solutions afternoon: [datascience_solutions.html](datascience_solutions.html)

### Videos

The morning session (Introduction to R) has been recorded for self-study.
Links to the videos and corresponding slides are below.

| Subject | Slides | Video | Exercise | Answer slide | Answer video |
|:--------|:-------|:------|:---------|:-------------|:-------------|
| Introduction to Rstudio | [Slides](slides/slides_introduction.html#12) | [Video](https://youtu.be/FFYSAUJ305o) | - | - | - |
| R Syntax & data types | [Slides](slides/slides_introduction.html#18) | [Video](https://youtu.be/S8zTmEvpYYk) | Exercise 1 | [Answer slide](slides/slides_introduction.html#27) | [Answer video](https://youtu.be/V8za6GR7u8Q) |
| Vectors in R | [Slides](slides/slides_introduction.html#28) | [Video](https://youtu.be/XMFjteCdHbQ) | Exercise 2 | [Answer slide](slides/slides_introduction.html#40) | [Answer video](https://youtu.be/rIieuoYT4z0) |
| Data structures | [Slides](slides/slides_introduction.html#41) | [Video](https://youtu.be/Ffk2Kxa_b_M) | Exercise 3 | [Answer slide](slides/slides_introduction.html#50) | [Answer video](https://youtu.be/A1GsHC6pIio) |
| Missing data | [Slides](slides/slides_introduction.html#53) | [Video](https://youtu.be/4gVvlg1Itzs) | Exercise 4 | [Answer slide](slides/slides_introduction.html#63) | - |
| Indexing vectors & lists | [Slides](slides/slides_introduction.html#66) | [Video](https://youtu.be/e10nO2swYIE) | Exercise 5 | [Answer slide](slides/slides_introduction.html#79) | [Answer video](https://youtu.be/4BZGGq-nBos) |
| Indexing a data frame | [Slides](slides/slides_introduction.html#80) | [Video](https://youtu.be/m15hbXG6I-Y) | Exercise 6 | [Answer slide](slides/slides_introduction.html#91) | [Answer video](https://youtu.be/DUk9bfcSwbA) |
| Programming | - | [Video (external)](https://www.youtube.com/watch?v=eSYeHlwDCNA&) | - | - | - |
| Programming: if statements | [Slides](slides/slides_introduction.html#98) | [Video](https://youtu.be/ASVKW4dyLZI) | Exercise 7 | [Answer slide](slides/slides_introduction.html#104) | [Answer video](https://youtu.be/CV3uOPfnnt4) |
| Programming: functions | [Slides](slides/slides_introduction.html#105) | [Video](https://youtu.be/P_qSXHyIUpQ) | Exercise 8 | [Answer slide](slides/slides_introduction.html#117) | [Answer video](https://youtu.be/EezEmFFbRow) |
| Programming: loops | [Slides](slides/slides_introduction.html#118) | [Video](https://youtu.be/K4KSjizSJFk) | Exercise 9 | [Answer slide](slides/slides_introduction.html#123) | [Answer video](https://youtu.be/7iKKwP3aFuA) |

### External resources
- Book: [R for Data Science](https://r4ds.had.co.nz/)
- [R cheat sheets](https://www.rstudio.com/resources/cheatsheets/) provided by the R community and RStudio, describing common procedures and packages. We use the following cheat sheets during our workshop:
    - [Base R](http://github.com/rstudio/cheatsheets/raw/master/base-r.pdf)
    - [R Markdown](https://www.rstudio.com/resources/cheatsheets/#rmarkdown)
    - [Data Import](https://www.rstudio.com/resources/cheatsheets/#import)
    - [Data Transformation with dplyr](https://www.rstudio.com/resources/cheatsheets/#dplyr)
    - [Data Visualization with ggplot2](https://www.rstudio.com/resources/cheatsheets/#ggplot2)



## Acknowledgements
The workshop 'Introduction to R & data' is developed and maintained by [Research Data Management Support](https://www.uu.nl/en/research/research-data-management) at Utrecht University.
All videos were recorded by [Jacques Flores](https://www.uu.nl/medewerkers/jpflores).
The material was written by [Barbara Vreede](https://github.com/bvreede), based on earlier versions by [Jonathan de Bruin](https://github.com/J535D165) and [Tessa Pronk](https://github.com/TessaPr).
