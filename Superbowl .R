LR <- read.csv("/Users/yanghaoying/Desktop/LR.csv", header = TRUE)
library(dplyr)
attach(LR)
fit1 = glm(Team_Score ~ Opp_avg_Score	+ Opp_avg_Passing	+ Team_Rushing +	Opp_avg_to	+ 
             Opp_avg_yards + Opp_win_rate, data = LR, family = poisson)
summary(fit1)

fit2 = glm(Team_Score ~ Opp_avg_Score	+ 	Opp_avg_to + Opp_win_rate, 
           data = LR, family = poisson)
summary(fit2)

fit3 = glm(Team_Score ~ Opp_avg_Score + Opp_win_rate, 
           data = LR, family = poisson)
summary(fit3)
#predict LAR score
pre_score_LAR=predict(fit3,newdata = data.frame('Opp_avg_Score'=28.56, 'Opp_win_rate'=0.7222),type = "response")
pre_score_LAR

NEP <- read.csv("/Users/yanghaoying/Desktop/NEP.csv", header = TRUE)
library(dplyr)
attach(NEP)

fit = glm(Team_Score ~ Opp_avg_Score+ Opp_win_rate, 
           data = NEP, family = poisson)
summary(fit)
#predict NEP score
pre_score_NEP=predict(fit,newdata = data.frame('Opp_avg_Score'=32.38, 'Opp_win_rate'=0.833),type = "response")

pre_score_NEP
pre_score_LAR

