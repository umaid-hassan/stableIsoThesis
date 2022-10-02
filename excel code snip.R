# New excel file 
library(openxlsx)
data(mtcars)

header_style <- createStyle(halign = "center", textDecoration = "bold")

wb <- createWorkbook()

addWorksheet(wb, "Data")
writeData(wb, "Data", mtcars, headerStyle = header_style)
freezePane(wb, "Data", firstRow = TRUE)
setColWidths(wb, "Data", cols = 1:ncol(mtcars), widths = "auto")
saveWorkbook(wb, file = "mtcars.xlsx", overwrite = TRUE)

# Existing file add data 
#load existing Excel workbook
wb <- loadWorkbook("C:\\MyLocation\\iris.xlsx")

writeData(wb, sheet = "iris", iris, rowNames = FALSE)

freezePane(wb, sheet = "iris", firstRow = TRUE)

saveWorkbook(wb, "C:\\MyLocation\\iris.xlsx", overwrite = TRUE)

