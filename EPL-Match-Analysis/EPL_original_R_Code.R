install.packages("openxlsx")
library(openxlsx)

options(digits=5)

#clearances----------------------------------------------------------------------------
league10.11=read.xlsx("C:/Users/ss/Documents/R/league.xlsx" , sheet = "10-11")
attach(league10.11)
league10.11$clr=home_clearances+away_clearances
clr_m1=mean(league10.11$clr)

league11.12=read.xlsx("C:/Users/ss/Documents/R/league.xlsx",sheet="11-12")
attach(league11.12)
league11.12$clr=home_clearances+away_clearances
clr_m2=mean(league11.12$clr)

league12.13=read.xlsx("C:/Users/ss/Documents/R/league.xlsx",sheet="12-13")
attach(league12.13)
league12.13$clr=home_clearances+away_clearances
clr_m3=mean(league12.13$clr)

league13.14=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="13-14")
attach(league13.14)
league13.14$clr=home_clearances+away_clearances
clr_m4=mean(league13.14$clr)

league14.15=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="14-15")
attach(league14.15)
league14.15$clr=home_clearances+away_clearances
clr_m5=mean(league14.15$clr)

league15.16=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="15-16")
attach(league15.16)
league15.16$clr=home_clearances+away_clearances
clr_m6=mean(league15.16$clr)

league16.17=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="16-17")
attach(league16.17)
league16.17$clr=home_clearances+away_clearances
clr_m7=mean(league16.17$clr)

league17.18=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="17-18")
attach(league17.18)
league17.18$clr=home_clearances+away_clearances
clr_m8=mean(league17.18$clr)

league18.19=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="18-19")
attach(league18.19)
league18.19$clr=home_clearances+away_clearances
clr_m9=mean(league18.19$clr)

league19.20=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="19-20")
attach(league19.20)
league19.20$clr=home_clearances+away_clearances
clr_m10=mean(league19.20$clr)

league20.21=read.xlsx("C:/Users/ss/Documents/R/league.xlsx", sheet="20-21")
attach(league20.21)
league20.21$clr=home_clearances+away_clearances
clr_m11=mean(league20.21$clr)

clr_=c(clr_m1, clr_m2, clr_m3, clr_m4, clr_m5, clr_m6, clr_m7, clr_m8, clr_m9, clr_m10, clr_m11)
plot(clr_,type='o',col='red',ylim=c(30,70),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"),las=3)
axis(2,ylim=c(30,70))
title(main="Seasonal Clearances Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Clearances",col.lab="red")

#goal----------------------------------------------------------------------
attach(league10.11)
league10.11$goal=goal_home_ft+goal_away_ft
goal_m1=mean(league10.11$goal)

attach(league11.12)
league11.12$goal=goal_home_ft+goal_away_ft
goal_m2=mean(league11.12$goal)

attach(league12.13)
league12.13$goal=goal_home_ft+goal_away_ft
goal_m3=mean(league12.13$goal)

attach(league13.14)
league13.14$goal=goal_home_ft+goal_away_ft
goal_m4=mean(league13.14$goal)

attach(league14.15)
league14.15$goal=goal_home_ft+goal_away_ft
goal_m5=mean(league14.15$goal)

attach(league15.16)
league15.16$goal=goal_home_ft+goal_away_ft
goal_m6=mean(league15.16$goal)

attach(league16.17)
league16.17$goal=goal_home_ft+goal_away_ft
goal_m7=mean(league16.17$goal)

attach(league17.18)
league17.18$goal=goal_home_ft+goal_away_ft
goal_m8=mean(league17.18$goal)

attach(league18.19)
league18.19$goal=goal_home_ft+goal_away_ft
goal_m9=mean(league18.19$goal)

attach(league19.20)
league19.20$goal=goal_home_ft+goal_away_ft
goal_m10=mean(league19.20$goal)

attach(league20.21)
league20.21$goal=goal_home_ft+goal_away_ft
goal_m11=mean(league20.21$goal)

goal_=c(goal_m1, goal_m2, goal_m3, goal_m4, goal_m5, goal_m6, goal_m7, goal_m8, goal_m9, goal_m10, goal_m11)
plot(goal_,type='o',col='red',ylim=c(2.5,2.9),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"), las=3)
axis(2,ylim=c(2.5, 2.9))
title(main="Seasonal Goals Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Goals",col.lab="red")

#shots----------------------------------------------------------------------
attach(league10.11)
league10.11$shots=home_shots+away_shots
shots_m1=mean(league10.11$shots)

attach(league11.12)
league11.12$shots=home_shots+away_shots
shots_m2=mean(league11.12$shots)

attach(league12.13)
league12.13$shots=home_shots+away_shots
shots_m3=mean(league12.13$shots)

attach(league13.14)
league13.14$shots=home_shots+away_shots
shots_m4=mean(league13.14$shots)

attach(league14.15)
league14.15$shots=home_shots+away_shots
shots_m5=mean(league14.15$shots)

attach(league15.16)
league15.16$shots=home_shots+away_shots
shots_m6=mean(league15.16$shots)

attach(league16.17)
league16.17$shots=home_shots+away_shots
shots_m7=mean(league16.17$shots)

attach(league17.18)
league17.18$shots=home_shots+away_shots
shots_m8=mean(league17.18$shots)

attach(league18.19)
league18.19$shots=home_shots+away_shots
shots_m9=mean(league18.19$shots)

attach(league19.20)
league19.20$shots=home_shots+away_shots
shots_m10=mean(league19.20$shots)

attach(league20.21)
league20.21$shots=home_shots+away_shots
shots_m11=mean(league20.21$shots)

shots_=c(shots_m1, shots_m2, shots_m3, shots_m4, shots_m5, shots_m6, shots_m7, shots_m8, shots_m9, shots_m10, shots_m11)
plot(shots_,type='o',col='red', ylim=c(23,30),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"),las=3)
axis(side=2, ylim=c(23,30))
title(main="Seasonal Shots Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Shots",col.lab="red")

#touches----------------------------------------------------------------------
attach(league10.11)
league10.11$touches=home_touches+away_touches
touches_m1=mean(league10.11$touches)

attach(league11.12)
league11.12$touches=home_touches+away_touches
touches_m2=mean(league11.12$touches)

attach(league12.13)
league12.13$touches=home_touches+away_touches
touches_m3=mean(league12.13$touches)

attach(league13.14)
league13.14$touches=home_touches+away_touches
touches_m4=mean(league13.14$touches)

attach(league14.15)
league14.15$touches=home_touches+away_touches
touches_m5=mean(league14.15$touches)

attach(league15.16)
league15.16$touches=home_touches+away_touches
touches_m6=mean(league15.16$touches)

attach(league16.17)
league16.17$touches=home_touches+away_touches
touches_m7=mean(league16.17$touches)

attach(league17.18)
league17.18$touches=home_touches+away_touches
touches_m8=mean(league17.18$touches)

attach(league18.19)
league18.19$touches=home_touches+away_touches
touches_m9=mean(league18.19$touches)

attach(league19.20)
league19.20$touches=home_touches+away_touches
touches_m10=mean(league19.20$touches)

attach(league20.21)
league20.21$touches=home_touches+away_touches
touches_m11=mean(league20.21$touches)

touches_=c(touches_m1, touches_m2, touches_m3, touches_m4, touches_m5, touches_m6, touches_m7, touches_m8, touches_m9, touches_m10, touches_m11)
plot(touches_,type='o',col='red', ylim=c(1200,1350),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"),las=3)
axis(side=2, ylim=c(1200,1350))
title(main="Seasonal Touches Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Touches",col.lab="red")

#passes----------------------------------------------------------------------
attach(league10.11)
league10.11$passes=home_passes+away_passes
passes_m1=mean(league10.11$passes)

attach(league11.12)
league11.12$passes=home_passes+away_passes
passes_m2=mean(league11.12$passes)

attach(league12.13)
league12.13$passes=home_passes+away_passes
passes_m3=mean(league12.13$passes)

attach(league13.14)
league13.14$passes=home_passes+away_passes
passes_m4=mean(league13.14$passes)

attach(league14.15)
league14.15$passes=home_passes+away_passes
passes_m5=mean(league14.15$passes)

attach(league15.16)
league15.16$passes=home_passes+away_passes
passes_m6=mean(league15.16$passes)

attach(league16.17)
league16.17$passes=home_passes+away_passes
passes_m7=mean(league16.17$passes)

attach(league17.18)
league17.18$passes=home_passes+away_passes
passes_m8=mean(league17.18$passes)

attach(league18.19)
league18.19$passes=home_passes+away_passes
passes_m9=mean(league18.19$passes)

attach(league19.20)
league19.20$passes=home_passes+away_passes
passes_m10=mean(league19.20$passes)

attach(league20.21)
league20.21$passes=home_passes+away_passes
passes_m11=mean(league20.21$passes)

passes_=c(passes_m1, passes_m2, passes_m3, passes_m4, passes_m5, passes_m6, passes_m7, passes_m8, passes_m9, passes_m10, passes_m11)
plot(passes_,type='o',col='red',ylim=c(750,1000),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"), las=3)
axis(2,ylim=c(750,1000))
title(main="Seasonal Passes Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Passes",col.lab="red")

#tackles----------------------------------------------------------------------
attach(league10.11)
league10.11$tackle=home_tackles+away_tackles
tackle_m1=mean(league10.11$tackle)

attach(league11.12)
league11.12$tackle=home_tackles+away_tackles
tackle_m2=mean(league11.12$tackle)

attach(league12.13)
league12.13$tackle=home_tackles+away_tackles
tackle_m3=mean(league12.13$tackle)

attach(league13.14)
league13.14$tackle=home_tackles+away_tackles
tackle_m4=mean(league13.14$tackle)

attach(league14.15)
league14.15$tackle=home_tackles+away_tackles
tackle_m5=mean(league14.15$tackle)

attach(league15.16)
league15.16$tackle=home_tackles+away_tackles
tackle_m6=mean(league15.16$tackle) 

attach(league16.17)
league16.17$tackle=home_tackles+away_tackles
tackle_m7=mean(league16.17$tackle)

attach(league17.18)
league17.18$tackle=home_tackles+away_tackles
tackle_m8=mean(league17.18$tackle)

attach(league18.19)
league18.19$tackle=home_tackles+away_tackles
tackle_m9=mean(league18.19$tackle)

attach(league19.20)
league19.20$tackle=home_tackles+away_tackles
tackle_m10=mean(league19.20$tackle)

attach(league20.21)
league20.21$tackle=home_tackles+away_tackles
tackle_m11=mean(league20.21$tackle)

tackle_=c(tackle_m1, tackle_m2, tackle_m3, tackle_m4, tackle_m5, tackle_m6, tackle_m7, tackle_m8, tackle_m9, tackle_m10, tackle_m11)
plot(tackle_,type='o',col='red', ylim=c(30,42),axes=F,ann=F)
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"),las=3)
axis(side=2, ylim=c(30,42))
title(main="Seasonal Tackles Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Tackles",col.lab="red")

#fouls----------------------------------------------------------------------
attach(league10.11)
league10.11$foul=home_fouls_conceded+away_fouls_conceded
foul_m1=mean(league10.11$foul)

attach(league11.12)
league11.12$foul=home_fouls_conceded+away_fouls_conceded
foul_m2=mean(league11.12$foul)

attach(league12.13)
league12.13$foul=home_fouls_conceded+away_fouls_conceded
foul_m3=mean(league12.13$foul)

attach(league13.14)
league13.14$foul=home_fouls_conceded+away_fouls_conceded
foul_m4=mean(league13.14$foul)

attach(league14.15)
league14.15$foul=home_fouls_conceded+away_fouls_conceded
foul_m5=mean(league14.15$foul)

attach(league15.16)
league15.16$foul=home_fouls_conceded+away_fouls_conceded
foul_m6=mean(league15.16$foul)

attach(league16.17)
league16.17$foul=home_fouls_conceded+away_fouls_conceded
foul_m7=mean(league16.17$foul)

attach(league17.18)
league17.18$foul=home_fouls_conceded+away_fouls_conceded
foul_m8=mean(league17.18$foul)

attach(league18.19)
league18.19$foul=home_fouls_conceded+away_fouls_conceded
foul_m9=mean(league18.19$foul)

attach(league19.20)
league19.20$foul=home_fouls_conceded+away_fouls_conceded
foul_m10=mean(league19.20$foul)

attach(league20.21)
league20.21$foul=home_fouls_conceded+away_fouls_conceded
foul_m11=mean(league20.21$foul)

foul_=c(foul_m1,foul_m2,foul_m3,foul_m4,foul_m5,foul_m6,foul_m7,foul_m8,foul_m9,foul_m10,foul_m11)
plot(foul_,type='o',col='red',ylim=c(20,25),axes=F,ann=F)
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"), las=3)
axis(2,ylim=c(20,25))
title(main="Seasonal Fouls Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Fouls",col.lab="red")

#tar----------------------------------------------------------------------
attach(league10.11)
league10.11$tar=home_shots_on_target+away_shots_on_target
tar_m1=mean(league10.11$tar)

attach(league11.12)
league11.12$tar=home_shots_on_target+away_shots_on_target
tar_m2=mean(league11.12$tar)

attach(league12.13)
league12.13$tar=home_shots_on_target+away_shots_on_target
tar_m3=mean(league12.13$tar)

attach(league13.14)
league13.14$tar=home_shots_on_target+away_shots_on_target
tar_m4=mean(league13.14$tar)

attach(league14.15)
league14.15$tar=home_shots_on_target+away_shots_on_target
tar_m5=mean(league14.15$tar)

attach(league15.16)
league15.16$tar=home_shots_on_target+away_shots_on_target
tar_m6=mean(league15.16$tar)

attach(league16.17)
league16.17$tar=home_shots_on_target+away_shots_on_target
tar_m7=mean(league16.17$tar)

attach(league17.18)
league17.18$tar=home_shots_on_target+away_shots_on_target
tar_m8=mean(league17.18$tar)

attach(league18.19)
league18.19$tar=home_shots_on_target+away_shots_on_target
tar_m9=mean(league18.19$tar)

attach(league19.20)
league19.20$tar=home_shots_on_target+away_shots_on_target
tar_m10=mean(league19.20$tar)

attach(league20.21)
league20.21$tar=home_shots_on_target+away_shots_on_target
tar_m11=mean(league20.21$tar)

tar_=c(tar_m1,tar_m2,tar_m3,tar_m4,tar_m5,tar_m6,tar_m7,tar_m8,tar_m9,tar_m10,tar_m11)
plot(tar_,type='o',col='red',ylim=c(8,9.5),axes=F,ann=F)
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"), las=3)
axis(2,ylim=c(8,9.5))
title(main="Seasonal Shots on target Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Shots on target",col.lab="red")

#accurary----------------------------------------------------------------------
accuracy_m1=tar_m1/shots_m1
accuracy_m2=tar_m2/shots_m2
accuracy_m3=tar_m3/shots_m3
accuracy_m4=tar_m4/shots_m4
accuracy_m5=tar_m5/shots_m5
accuracy_m6=tar_m6/shots_m6
accuracy_m7=tar_m7/shots_m7
accuracy_m8=tar_m8/shots_m8
accuracy_m9=tar_m9/shots_m9 
accuracy_m10=tar_m10/shots_m10
accuracy_m11=tar_m11/shots_m11

accuracy_=c(accuracy_m1, accuracy_m2, accuracy_m3, accuracy_m4, accuracy_m5, accuracy_m6, accuracy_m7, accuracy_m8, accuracy_m9, accuracy_m10, accuracy_m11)
plot(accuracy_,type='o',col='red',ylim=c(0.31,0.36),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"),las=3)
axis(2,ylim=c(0.31,0.36))
title(main="Seasonal Accuracy Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Accuracy",col.lab="red")

#transfer----------------------------------------------------------------------
transfer_=touches_-passes_
transfer_

plot(transfer_,type='o',col='red',ylim=c(360,450),axes=F,ann=F) 
axis(1,at=1:11,lab=c("10-11","11-12","12-13","13-14","14-15","15-16","16-17","17-18","18-19","19-20","20-21"), las=3)
axis(2,ylim=c(360,450))
title(main="Seasonal Transfer Mean",col.main="blue")
title(xlab="Season",col.lab="black")
title(ylab="Mean of Transfer",col.lab="red")