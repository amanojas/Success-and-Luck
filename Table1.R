library(knitr)
ques2 = repmis::source_data("https://raw.githubusercontent.com/amanojas/Success-and-Luck/master/Datatable1.csv")
ques2 = matrix(data = ques2$V1 , nrow = 3, ncol = 3, byrow = TRUE,dimnames = list(c("Smoker","Non-smoker","Total"),c("Male","Female","Total")))

kable(ques2, caption = "")

