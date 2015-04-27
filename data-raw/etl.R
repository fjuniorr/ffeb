library("readxl")

dt <- read_excel("/Users/fjunior/Documents/projects/active/ffeb/data-raw/RCL_Estados(PR, SC,RS, RO,TO,SE,BA).xls",
           sheet = 1, skip = 1)

library("xlsx")

dt <- read.xlsx("/Users/fjunior/Documents/projects/active/ffeb/data-raw/RCL_Estados(PR, SC,RS, RO,TO,SE,BA).xls", 
                sheetIndex = 1,
                rowIndex = 2:14,
                colIndex = 1:13)