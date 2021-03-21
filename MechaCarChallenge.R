library(dplyr)
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mecha_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_table)
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep') #create lot_summary df using group_by
t.test(total_summary, mu = 1500) #compare sample versus population means
t.test(lot_summary, mu = 1500) #compare sample vs. population mean
Lot1 <- subset(lot_summary, Manufacturing_Lot=='Lot1') #Sample Lot1 vs. population mean
Lot2 <- subset(lot_summary, Manufacturing_Lot=='Lot2') #Sample Lot2 vs. population mean
Lot3 <- subset(lot_summary, Manufacturing_Lot=='Lot3') #Sample Lot3 vs. population mean
