x<-c(1,2,6,4,5)
max(x)
min(x)

which.max(x)
which.min(x)

check<-function(n)
{
  if(n>0){
    r<-"Positive"
  }else if(n<0){
    r<-"Negative"
  }else{
    r<-"Zero"
  }
  return(r)
}

check(10)
check(-20)
check(00)

pow<-function(x,y)
{
  r<-x^y
  return(r)
}

pow(2,2)

fact<-function(n)
{
  if(n<=0)
    return(1)
  return(n*fact(n-1))
}

fact(5)

combination<-function(n,r)
{
  return(fact(n)/fact(r)*fact(n-r))
  
}
combination(3,2)


# R version 4.3.1 (2023-06-16 ucrt) -- "Beagle Scouts"
# Copyright (C) 2023 The R Foundation for Statistical Computing
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# 
# R is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# Type 'license()' or 'licence()' for distribution details.
# 
# R is a collaborative project with many contributors.
# Type 'contributors()' for more information and
# 'citation()' on how to cite R or R packages in publications.
# 
# Type 'demo()' for some demos, 'help()' for on-line help, or
# 'help.start()' for an HTML browser interface to help.
# Type 'q()' to quit R.
# 
# > pow(2,2)
# Error in pow(2, 2) : could not find function "pow"
# > x<-1,2,3,4,5
# Error: unexpected ',' in "x<-1,"
# > x<-c(1,2,3,4,5)
# > max(x)
# [1] 5
# > min(x)
# [1] 1
# > which.max(x)
# [1] 5
# > x<-c(1,2,6,4,5)
# > max(x)
# [1] 6
# > min(x)
# [1] 1
# > which.max(x)
# [1] 3
# > which.min(x)
# [1] 1
# > x<-c(1,2,6,4,5)
# > max(x)
# [1] 6
# > min(x)
# [1] 1
# > 
#   > which.max(x)
# [1] 3
# > which.min(x)
# [1] 1
# > 
#   > check<-function(n)
#     + {
#       +   if(n>0){
#         +     r<-"Positive"
#         +   }else if(n<0){
#           +     r<-"Negative"
#           +   }else{
#             +     r<-"Zero"
#             +   }
#       +   return(result)
#       + }
# > check(10)
# Error in check(10) : object 'result' not found
# > check(10)
# Error in check(10) : object 'result' not found
# > check<-function(n)
#   + {
#     +   if(n>0){
#       +     r<-"Positive"
#       +   }else if(n<0){
#         +     r<-"Negative"
#         +   }else{
#           +     r<-"Zero"
#           +   }
#     +   return(r)
#     + }
# > check(10)
# [1] "Positive"
# > check(-20)
# [1] "Negative"
# > check(00)
# [1] "Zero"
# > pow<-function(x,y)
#   + {
#     +   r<-x^y
#     +   return(r)
#     + }
# > pow(2,2)
# [1] 4
# > fact<-function(n)
#   + {
#     +   if(n<=0)
#       +     return(1)
#     +   return(fact(n-1)*fact(n-2))
#     + }
# > fact(5)
# [1] 1
# > fact<-function(n)
#   + {
#     +   if(n<=0)
#       +     return(1)
#     +   return(n*fact(n-1))
#     + }
# > fact(5)
# [1] 120
# > combination<-function(n,r)
#   + {
#     +   return(fact(n)/fact(n)*fact(n-r))
#     +   
#       + }
# > combination(3,2)
# [1] 1
# > combination<-function(n,r)
#   + {
#     +   return(fact(n)/fact(r)*fact(n-r))
#     +   
#       + }
# > combination(3,2)
# [1] 3

