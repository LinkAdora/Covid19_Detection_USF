###################
#load packages
library(tableone)
library(Matching)
library(foreign)
library(sensitivityfull)
#read in data
dataset = read.spss("R:\\Research\\Res_sensor_paper\\causal_data_hold.sav", to.data.frame=TRUE)
#view data
# View(dataset)

#create a data set with just these variables, for simplicity
Age = dataset$Age
Sex = dataset$Gender
BMI = dataset$BMI
treatment = dataset$COVID_state
pmean_outcome = dataset$Prom_mean
DET_outcome = dataset$DET      

# covariates we will use 
xvars<-c("Age","Gender","BMI")

#look at a table 1
table1<- CreateTableOne(vars=xvars,strata ="COVID_state", data=dataset, test=TRUE)
## include standardized mean difference (SMD)
print(table1,smd=TRUE)


############################################
#do greedy matching on Mahalanobis distance
############################################

mydata = dataset
greedymatch<-Match(Tr=treatment,M=1,X=mydata[xvars],replace=TRUE)
matched<-mydata[unlist(greedymatch[c("index.treated","index.control")]), ]


#do greedy matching on logit(PS) using Match with a caliper

#logit <- function(p) {log(p)-log(1-p)}
#psmatch<-Match(Tr=mydata$Nap_treatment_w1,M=1,X=logit(pscore),replace=FALSE,caliper=.2)
#matched<-mydata[unlist(psmatch[c("index.treated","index.control")]), ]

#get table 1 for matched data with standardized differences
matchedtab1<-CreateTableOne(vars=xvars, strata ="COVID_state", 
                            data=matched, test = TRUE)
print(matchedtab1, smd = TRUE)

#outcome analysis for p mean
y_trt<-matched$Prom_mean[matched$COVID_state==1]
y_con<-matched$Prom_mean[matched$COVID_state==0]

#pairwise difference
diffy<-y_trt-y_con

#paired t-test
t.test(diffy)

#outcome analysis for DET
y_trt<-matched$DET[matched$COVID_state==1]
y_con<-matched$DET[matched$COVID_state==0]

#pairwise difference
diffy<-y_trt-y_con

#paired t-test
t.test(diffy)

##########################
#Saving data to Excel file
##########################
library(openxlsx)
write.xlsx(matched, 'R:/Research/Res_sensor_paper/matching_hold.xlsx')



