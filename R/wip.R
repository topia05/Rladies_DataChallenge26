source("R/setup.R")
# R ladies Ottawa data challenge 2026

# Analyzing respiratory virus outbreaks in Ottawa

# Effects of: age, time of outbreak, correlation with hospitalization, 
# origin of outbreak, season, etc. 

# Data sources (Open Ottawa):
# 1. All causes and respiratory related emergency 
# https://open.ottawa.ca/datasets/1a29ad2166e1485d92bfb7393344f003_0/explore 
# 2. Respirtory Outbreaks (Excluding COVID-19)
# https://open.ottawa.ca/datasets/5450060d366e4cb7b7d274a894c58fd4_0/explore

# Read data
er <- read.csv("data/All_causes_and_respiratory_related_emergency.csv", header = TRUE)
outbreaks <- read.csv("data/Respiratory_Outbreaks_(excluding_COVID-19).csv", header = TRUE)

head(er)
head(outbreaks)

er$date <- as.Date(er$Epidemiological_Week)

# add week number to er data 
er$Week_Number <- isoweek(ymd(er$date))

plot(er$Week_Number, er$All_Causes_ED_Visits_to_Ottawa_Hospitals)

plot(er$Week_Number, er$Respiratory_related_ED_Visits_to_Ottawa_Hospitals)

plot(outbreaks$Week_Number, 
    outbreaks$Number_of_Respiratory_Outbreaks__Excl__COVID_19__in_Schools__Camps__and_Licensed_Child_Care,
    ylab = "Outbreaks in Schools, Camps, Childcare",
    xlab="Week")

plot(outbreaks$Week_Number, 
    outbreaks$Number_of_Respiratory_Outbreaks__Excl__COVID_19__in_Healthcare_Institutions,
    ylab = "Outbreaks in Healthcare Institutions",
    xlab="Week")


plot(outbreaks$Week_Number, 
    outbreaks$Number_of_Respiratory_Outbreaks__Excl__COVID_19__in_Congregate_Care,
    ylab = "Outbreaks in Congegrate Care",
    xlab="Week")
