# Creates publications_list.qmd from cv_gertrud.qmd
source("get_publications.R")

# Render website in "docs" folder
quarto::quarto_render()

# Or for actively editing, use
quarto::quarto_preview()
