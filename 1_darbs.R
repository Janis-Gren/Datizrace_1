# Import necessary libraries

library(tidyverse)
library(readr)

# Import data set

X02_hr_data_v00 <- read_delim("02_hr_data_v00.csv", 
                              +     delim = ";", escape_double = FALSE, locale = locale(encoding = "WINDOWS-1252"), 
                              +     trim_ws = TRUE, skip = 2)

# Replace column names with translated ones

hr_data <- X02_hr_data_v00

column_names <- names(hr_data)
print(column_names)

new_col_names <- c("1", "Age", "Left Company", "Business trip", "Department", "Distance From Home",
                   "Training", "Education sector", "Number of Employees", "Personnel card", "Sex",
                   "Work level", "Job Role", "Civil status", "Monthly income",
                   "Number of Companies Where Worked", "Over 18", "Percentage of Salary Increase",
                   "Opening hours", "Stock option level", "Total years of service",
                   "Training Times Last Year", "Years in the Company", "Years Since the Last Graduation",
                   "Years With Current Leader")

names(hr_data) <- new_col_names

# Checking variable names in each column

unique_values <- unique(hr_data$Age)
cat(unique_values, sep = "\n")

unique_values1 <- unique(hr_data$`Left Company`)
cat(unique_values1, sep = "\n")

unique_values2 <- unique(hr_data$`Business trip`)
cat(unique_values2, sep = "\n")

unique_values3 <- unique(hr_data$Department)
cat(unique_values3, sep = "\n")

unique_values4 <- unique(hr_data$`Distance From Home`)
cat(unique_values4, sep = "\n")

unique_values5 <- unique(hr_data$Training)
cat(unique_values5, sep = "\n")

unique_values5 <- unique(hr_data$Training)
cat(unique_values5, sep = "\n")

unique_values6 <- unique(hr_data$`Education sector`)
cat(unique_values6, sep = "\n")

unique_values7 <- unique(hr_data$`Number of Employees`)
cat(unique_values7, sep = "\n")

unique_values8 <- unique(hr_data$`Personnel card`)
cat(unique_values8, sep = "\n")

unique_values9 <- unique(hr_data$Sex)
cat(unique_values9, sep = "\n")

unique_values10 <- unique(hr_data$`Work level`)
cat(unique_values10, sep = "\n")

unique_values11 <- unique(hr_data$`Job Role`)
cat(unique_values11, sep = "\n")

unique_values12 <- unique(hr_data$`Civil status`)
cat(unique_values12, sep = "\n")

unique_values13 <- unique(hr_data$`Monthly income`)
cat(unique_values13, sep = "\n")

unique_values14 <- unique(hr_data$`Number of Companies Where Worked`)
cat(unique_values14, sep = "\n")

unique_values15 <- unique(hr_data$`Over 18`)
cat(unique_values15, sep = "\n")

unique_values16 <- unique(hr_data$`Percentage of Salary Increase`)
cat(unique_values16, sep = "\n")

unique_values17 <- unique(hr_data$`Opening hours`)
cat(unique_values17, sep = "\n")

unique_values18 <- unique(hr_data$`Total years of service`)
cat(unique_values18, sep = "\n")

unique_values19 <- unique(hr_data$`Training Times Last Year`)
cat(unique_values19, sep = "\n")

unique_values20 <- unique(hr_data$`Years in the Company`)
cat(unique_values20, sep = "\n")

unique_values21 <- unique(hr_data$`Years Since the Last Graduation`)
cat(unique_values21, sep = "\n")

unique_values22 <- unique(hr_data$`Years With Current Leader`)
cat(unique_values22, sep = "\n")

unique_values23 <- unique(hr_data$`Stock option level`)
cat(unique_values23, sep = "\n")

# Replace wrong values with correct ones

hr_data$Age <- gsub('kuusikymmentä', '60', hr_data$Age)
hr_data$Age <- gsub('2O', '20', hr_data$Age)
unique_values <- unique(hr_data$Age)

hr_data$`Left Company` <- gsub('Joo', 'Yes', hr_data$`Left Company`)
hr_data$`Left Company` <- gsub('yes', 'Yes', hr_data$`Left Company`)
hr_data$`Left Company` <- gsub('NO', 'No', hr_data$`Left Company`)

hr_data$`Business trip` <- gsub('Travel_Frequently', 'Frequently', hr_data$`Business trip`)
hr_data$`Business trip` <- gsub('Travel_Rarely', 'Rare', hr_data$`Business trip`)
hr_data$`Business trip` <- gsub('Non - Travel', 'Non-Travel', hr_data$`Business trip`)
unique_values2 <- unique(hr_data$`Business trip`)

hr_data$Department <- gsub('R&D', 'Research & Development', hr_data$Department)
hr_data$Department <- gsub('HR', 'Human Resources', hr_data$Department)
unique_values3 <- unique(hr_data$Department)

hr_data$Training <- gsub("3 'Bachelor' 'Bachelor'", "3 'Bachelor'", hr_data$Training)
hr_data$Training <- gsub("4 'Master' 'Master'", "4 'Master'", hr_data$Training)
hr_data$Training <- gsub("5 'Doctor' 'Doctor'", "5 'Doctor'", hr_data$Training)
unique_values5 <- unique(hr_data$Training)

hr_data$`Education sector` <- gsub('H R', 'Human Resources', hr_data$`Education sector`)
hr_data$`Education sector` <- gsub('LS', 'Life Sciences', hr_data$`Education sector`)
hr_data$`Education sector` <- gsub('MED', 'Medical', hr_data$`Education sector`)
hr_data$`Education sector` <- gsub('OTH', 'Other', hr_data$`Education sector`)
unique_values6 <- unique(hr_data$`Education sector`)

hr_data$Sex <- gsub('Uros', 'Male', hr_data$Sex)
unique_values9 <- unique(hr_data$Sex)

hr_data$`Work level` <- gsub('01', '1', hr_data$`Work level`)
unique_values10 <- unique(hr_data$`Work level`)

hr_data$`Job Role` <- gsub('Sales E', 'Sales Executive', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('Mngr', 'Manager', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('Laboratory    Technician', 'Laboratory Technician', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('Manufacturing Dir.', 'Manufacturing Director', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('RS', 'Research Scientist', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('Healthcare Rprs', 'Healthcare Representative', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('RD', 'Research Director', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('Lab Tech', 'Laboratory Technician', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('SR', 'Sales Representative', hr_data$`Job Role`)
hr_data$`Job Role` <- gsub('Sales Executivexecutive', 'Sales Executive', hr_data$`Job Role`)
unique_values11 <- unique(hr_data$`Job Role`)

convert_civil_status <- function(x) {
  if (is.na(x)) {
    return(NA)
  } else if (x == "Married") {
    return("Married")
  } else {
    return("Single")
  }
}
hr_data$`Civil status` <- sapply(hr_data$`Civil status`, convert_civil_status)

hr_data$`Number of Companies Where Worked` <- gsub('tämä on ensimmäinen', '0', hr_data$`Number of Companies Where Worked`)
hr_data$`Number of Companies Where Worked` <- gsub('None', '0', hr_data$`Number of Companies Where Worked`)
hr_data$`Number of Companies Where Worked` <- gsub('two', '2', hr_data$`Number of Companies Where Worked`)
hr_data$`Number of Companies Where Worked` <- gsub('N / A', 'NA', hr_data$`Number of Companies Where Worked`)
unique_values14 <- unique(hr_data$`Number of Companies Where Worked`)

hr_data$`Percentage of Salary Increase` <- gsub('25 pct', '25', hr_data$`Percentage of Salary Increase`)
hr_data$`Percentage of Salary Increase` <- gsub('15%', '15', hr_data$`Percentage of Salary Increase`)
hr_data$`Percentage of Salary Increase` <- gsub('%11', '11', hr_data$`Percentage of Salary Increase`)
unique_values16 <- unique(hr_data$`Percentage of Salary Increase`)

hr_data$`Opening hours` <- gsub('8hrs', '8', hr_data$`Opening hours`)
unique_values17 <- unique(hr_data$`Opening hours`)

hr_data$`Total years of service` <- gsub('one', '1', hr_data$`Total years of service`)
hr_data$`Total years of service` <- gsub('N.A', 'NA', hr_data$`Total years of service`)
hr_data$`Total years of service` <- gsub('nolla', '0', hr_data$`Total years of service`)
unique_values18 <- unique(hr_data$`Total years of service`)

hr_data$`Training Times Last Year` <- gsub('kuusi', '6', hr_data$`Training Times Last Year`)
unique_values19 <- unique(hr_data$`Training Times Last Year`)

hr_data$`Years in the Company` <- gsub('III', '3', hr_data$`Years in the Company`)
hr_data$`Years in the Company` <- gsub('II', '2', hr_data$`Years in the Company`)
hr_data$`Years in the Company` <- gsub('I', '1', hr_data$`Years in the Company`)
unique_values20 <- unique(hr_data$`Years in the Company`)

hr_data$`Years Since the Last Graduation` <- gsub('No', '0', hr_data$`Years Since the Last Graduation`)
hr_data$`Years Since the Last Graduation` <- gsub('x', '0', hr_data$`Years Since the Last Graduation`)
unique_values21 <- unique(hr_data$`Years Since the Last Graduation`)

hr_data$`Years With Current Leader` <- gsub('5yrs', '5', hr_data$`Years With Current Leader`)
hr_data$`Years With Current Leader` <- gsub('4y', '4', hr_data$`Years With Current Leader`)
hr_data$`Years With Current Leader` <- gsub('0yrs', '0', hr_data$`Years With Current Leader`)
hr_data$`Years With Current Leader` <- gsub('17y', '17', hr_data$`Years With Current Leader`)
hr_data$`Years With Current Leader` <- gsub('04', '4', hr_data$`Years With Current Leader`)
hr_data$`Years With Current Leader` <- gsub('01', '1', hr_data$`Years With Current Leader`)
unique_values22 <- unique(hr_data$`Years With Current Leader`)

hr_data$`Stock option level` <- gsub('No', '0', hr_data$`Stock option level`)
unique_values23 <- unique(hr_data$`Stock option level`)


# ***** Remove columns with NA only values

hr_data$`1` <- NULL






