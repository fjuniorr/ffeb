library("xlsx")
library("devtools")

rcl_estados <- read.xlsx("./data-raw/RR-AP-SP-RJ-MG-ES.xlsx", 
                sheetIndex = 1,
                rowIndex = 1:145,
                colIndex = 1:7)

rcl_estados$ano <- substr(rcl_estados[, 1], start = 1, stop = 4)

rcl_estados$mes <- substr(rcl_estados[, 1], start = 6, stop = 7)

rcl_estados$NA. <- NULL

rcl_estados <- rcl_estados[, c(7, 8, 1:6)]

names(rcl_estados) <- c("ano", "mes", "rj", "sp", "es", "mg", "rr", "ap")

rcl_estados[rcl_estados[, "rr"] == 0, "rr"] <- NA

rcl_estados[rcl_estados[, "ap"] == 0, "ap"] <- NA

use_data(rcl_estados)
