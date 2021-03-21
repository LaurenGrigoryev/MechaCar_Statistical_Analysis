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

?t.test()

t.test(subset(suspension_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500)#compare individual lots to pop, Lot1
t.test(subset(suspension_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500)#compare individual lots to pop, Lot2
t.test(subset(suspension_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500)#compare individual lots to pop, Lot3

       