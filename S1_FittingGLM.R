# Chad C. Wong
# July 5th, 2024
# Resolving a merge conflict in R-Studio #######################################

################################################################################
# This script is used to QA/QC the seven years of RST data (2018:2024)
# data that Kaitlyn Manishin shared with me in order to upload to the 
# udpated SaritaReneawl (previously kwispaa) SQL database. 

# This is only for the following base SQL Tables:
# PeriodNames, SiteData, WildChinookCatch, OtherCatch, Biosampling, ChinookTissue
################################################################################

# Setting up environment #######################################################
## Loading packages and reading .XLSX files ====================================
pacman::p_load(tidyverse, readxl, foreach, data.table)

setwd("C:/Users/Chris/OneDrive - LGL Limited/CPUD_Chinook_2023/R Code")

# Loading in Excel file ########################################################
# 2020 RST File ===============================================================
datapath <- "./2024 Updates/Local Data Copy/21May2024/Sarita_RST/"

time_20 <- 
  read_xlsx(
    path=paste0(datapath, "RST_2020.xlsx"), 
    sheet = "RST_WaterQuality",
    range = "E1:F79",
    col_types = c("date", "date")
  )

s_20a$'Time - Stop' <- time_20$"Time - Stop"
s_20a$'Time - Restart' <- time_20$"Time - Restart"