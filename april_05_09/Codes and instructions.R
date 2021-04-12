# RMarkdown #2 
# Reproducible Research 2021
# Jorge Bueno Perez

#################

# Exercise 2
# 
# Open the Exercise 2.Rmd file (and the .html for reference). Take a look.
# 
# Main goal: modify the Exercise 2 content to make it an automated report
# that can be used for any of the Game of Thrones seasons.
# 
# - Use params. 
# 
# - You can refer to the files in the Data folder as input or you can visit
# the Wikipedia pages for specific seasons and use web scraping (the longer but possible road).
# 
# - Change the relevant numbers, names, descriptions, etc. in the text so that
# the report includes info for the correct season
# 
# - If you get that far, do a loop with render() to quickly create 8 reports in pdfs.

for (seas in c(1:8)) {
  rmarkdown::render("Exercise_2.Rmd", output_format = "pdf_document", output_file= paste0("Reports/season", seas, ".pdf"),  param = list(i = seas), clean = TRUE)
}

