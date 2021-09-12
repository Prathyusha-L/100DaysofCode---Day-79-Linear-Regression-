CustCsv <- read.csv("c:\\R\\Customer_Age_Income.csv");
Income_DF <- data.frame(Inc = CustCsv$Income[1:6], Spend = CustCsv$SalesAmt[1:6]);
Income_DF
Model_lm <- lm(Spend ~ Inc, data=Income_DF)
NewInc <- data.frame(Inc=150)
Spend_Value <- predict(Model_lm,NewInc)
Spend_Value


CustCsv <- read.csv("c:\\R\\Customer_Age_Income.csv");
Income_DF <- data.frame(Inc = CustCsv$Income[1:12], Spend = CustCsv$SalesAmt[1:12]);
Income_DF
Model_lm <- lm(Spend ~ Inc, data=Income_DF)
NewInc <- data.frame(Inc=150)
Spend_Value <- predict(Model_lm,NewInc)
Spend_Value



CustCsv <- read.csv("c:\\R\\Customer_Age_Income.csv");
Income_DF <- data.frame(Inc = CustCsv$Income[1:12],Job = CustCsv$Job[1:12], 
                        Spend = CustCsv$SalesAmt[1:12]);
Income_DF
Model_lm <- lm(Spend ~ Inc+Job, data=Income_DF)
NewInc <- data.frame(Inc<-c(120,120),Job <- c("Employed","Self-Employed"))
Spend_Value <- predict(Model_lm,NewInc)
Spend_Value
summary(Model_lm)



CustCsv <- read.csv("c:\\R\\Customer_Age_Income.csv");
Income_DF <- data.frame(Inc = CustCsv$Income,Job = CustCsv$Job, 
                        Spend = CustCsv$SalesAmt);
Income_DF
Model_lm <- lm(Spend ~ Inc+Job, data=Income_DF)
NewInc <- data.frame(Inc<-c(120,120),Job <- c("Employed","Self-Employed"))
Spend_Value <- predict(Model_lm,NewInc)
Spend_Value
summary(Model_lm)
