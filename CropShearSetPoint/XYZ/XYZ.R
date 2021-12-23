fitControl <- trainControl( method = "repeatedcv", number = 4, repeats = 4)
ad4 = train( mvar49 ~ mvar2+ mvar4+ mvar5+ mvar6+ mvar7+ mvar8+ mvar9+ mvar10+ mvar11+ mvar12+ mvar13+ mvar14+ mvar15+ mvar16+ mvar17+ mvar18+ mvar19+ mvar20+ mvar21+ mvar22+ mvar23+ mvar24+ mvar25+ mvar26+ mvar27+ mvar28+ mvar29+ mvar30+ mvar31+ mvar32+ mvar33+ mvar34+ mvar35+ mvar36+ mvar37+ mvar38+ mvar39+ mvar40+ mvar41+ mvar42+ mvar43+ mvar44+ mvar45, data = t_imp, method = "gbm", trControl = fitControl,verbose = FALSE )
ad5 = train( mvar50 ~ mvar2+ mvar4+ mvar5+ mvar6+ mvar7+ mvar8+ mvar9+ mvar10+ mvar11+ mvar12+ mvar13+ mvar14+ mvar15+ mvar16+ mvar17+ mvar18+ mvar19+ mvar20+ mvar21+ mvar22+ mvar23+ mvar24+ mvar25+ mvar26+ mvar27+ mvar28+ mvar29+ mvar30+ mvar31+ mvar32+ mvar33+ mvar34+ mvar35+ mvar36+ mvar37+ mvar38+ mvar39+ mvar40+ mvar41+ mvar42+ mvar43+ mvar44+ mvar45, data = t_imp, method = "gbm", trControl = fitControl,verbose = FALSE )
ad6 = train( mvar51 ~ mvar2+ mvar4+ mvar5+ mvar6+ mvar7+ mvar8+ mvar9+ mvar10+ mvar11+ mvar12+ mvar13+ mvar14+ mvar15+ mvar16+ mvar17+ mvar18+ mvar19+ mvar20+ mvar21+ mvar22+ mvar23+ mvar24+ mvar25+ mvar26+ mvar27+ mvar28+ mvar29+ mvar30+ mvar31+ mvar32+ mvar33+ mvar34+ mvar35+ mvar36+ mvar37+ mvar38+ mvar39+ mvar40+ mvar41+ mvar42+ mvar43+ mvar44+ mvar45, data = t_imp, method = "gbm", trControl = fitControl,verbose = FALSE )
p4 = predict(ad4, newdata = l_imp)
p5 = predict(ad5, newdata = l_imp)
p6 = predict(ad6, newdata = l_imp)
l_imp$mvar49 = p4
l_imp$mvar50 = p5
l_imp$mvar51 = p6

write.csv(l_imp, file = "21_imp_result.csv")


fitControl <- trainControl( method = "repeatedcv", number = 10, repeats = 10)
ad4 = train( mvar49 ~ mvar2+ mvar4+ mvar5+ mvar6+ mvar7+ mvar8+ mvar9+ mvar10+ mvar11+ mvar12+ mvar13+ mvar14+ mvar15+ mvar16+ mvar17+ mvar18+ mvar19+ mvar20+ mvar21+ mvar22+ mvar23+ mvar24+ mvar25+ mvar26+ mvar27+ mvar28+ mvar29+ mvar30+ mvar31+ mvar32+ mvar33+ mvar34+ mvar35+ mvar36+ mvar37+ mvar38+ mvar39+ mvar40+ mvar41+ mvar42+ mvar43+ mvar44+ mvar45, data = t_imp, method = "gbm", trControl = fitControl,verbose = FALSE )
ad5 = train( mvar50 ~ mvar2+ mvar4+ mvar5+ mvar6+ mvar7+ mvar8+ mvar9+ mvar10+ mvar11+ mvar12+ mvar13+ mvar14+ mvar15+ mvar16+ mvar17+ mvar18+ mvar19+ mvar20+ mvar21+ mvar22+ mvar23+ mvar24+ mvar25+ mvar26+ mvar27+ mvar28+ mvar29+ mvar30+ mvar31+ mvar32+ mvar33+ mvar34+ mvar35+ mvar36+ mvar37+ mvar38+ mvar39+ mvar40+ mvar41+ mvar42+ mvar43+ mvar44+ mvar45, data = t_imp, method = "gbm", trControl = fitControl,verbose = FALSE )
ad6 = train( mvar51 ~ mvar2+ mvar4+ mvar5+ mvar6+ mvar7+ mvar8+ mvar9+ mvar10+ mvar11+ mvar12+ mvar13+ mvar14+ mvar15+ mvar16+ mvar17+ mvar18+ mvar19+ mvar20+ mvar21+ mvar22+ mvar23+ mvar24+ mvar25+ mvar26+ mvar27+ mvar28+ mvar29+ mvar30+ mvar31+ mvar32+ mvar33+ mvar34+ mvar35+ mvar36+ mvar37+ mvar38+ mvar39+ mvar40+ mvar41+ mvar42+ mvar43+ mvar44+ mvar45, data = t_imp, method = "gbm", trControl = fitControl,verbose = FALSE )
p4 = predict(ad4, newdata = l_imp)
p5 = predict(ad5, newdata = l_imp)
p6 = predict(ad6, newdata = l_imp)
l_imp$mvar49 = p4
l_imp$mvar50 = p5
l_imp$mvar51 = p6

write.csv(l_imp, file = "21_imp_result.csv")