library(conjointTools)

set.seed(1995912)

levelValues <- list(
  price = c("$0", "$5", "$10", "$15", "$20", "$25", "$30"),
  time = c("Today", 'Tomorrow', 'In 4 days', 'In 7 days'),
  agent = c('Human', 'Autnomous vehicle'),
  location = c('Doorstep', 'Curbside', 'Neighborhood locker')
)

doe <- makeDoe(levelValues)
doe <- recodeDoe(doe, levelValues)

numberOfRespondents <- 500
numberOfQuestions <- 10
numberOfAlts <- 2
outsideGood <- FALSE

surveyValues <- makeSurvey(doe, nResp = numberOfRespondents, nQPerResp = numberOfQuestions, nAltsPerQ = numberOfAlts, outsideGood = outsideGood)
write.csv(surveyValues, 'Designs/FoodDeliveryPilotCBCDesign.csv')