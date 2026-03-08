
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
