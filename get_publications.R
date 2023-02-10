# Publications
library(stringr)

file.copy("cv_gertrud.qmd", "publications_list.qmd", overwrite = TRUE)

pubs <- readLines("publications_list.qmd")

include <- str_which(pubs, "Website|ResearchGate|ORCID")
start <- str_which(pubs, "Publications")
end <- str_which(pubs, "Theses")

# Create preamble
pre <- c("---",
         "format: pdf",
         "---",
         "",
         "![](assets/fwrlogo.png){width=250 fig-align=right}",
         "",
         paste0("*", format(Sys.Date(), "%b %Y"), "*"),
         "",
         "**List of Publications by Gertrud K. Nürnberg**"
         )

# Check
cat(pre)
pubs[include]
start
end

# Combine the parts
include <- paste0(pubs[include], "    ")  # Add spaces to the end of line to make a line break
pubs <- c(pre, "", include, "", pubs[start:(end - 1)])

writeLines(pubs, "publications_list.qmd")
