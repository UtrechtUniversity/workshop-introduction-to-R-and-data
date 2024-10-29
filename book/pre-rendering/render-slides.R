library(quarto)
print("Let's render the Morning slides first")
quarto_render("slides/slides_introduction.qmd")

print("Moving onto the Tidyverse slides")
quarto_render("slides/slides_tidyverse.qmd")

print("Done rendering the slides! Now onto the book itself...")