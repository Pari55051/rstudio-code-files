
for(m in 51:499){
  for(n in 1:(m-1)){
    if(sum(1:(n-1)) == sum((n+1):m)){
      print(paste("m =", m, "and n =", n))
    }
  }
}
