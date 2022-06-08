# 2018315006 정성엽
for (i in 2:9){
  cat("***",i,"단 *** \n")
  for (j in 1:9) {
    cat(paste(i, "*", j, "=", i * j, "\n"))
  }
}