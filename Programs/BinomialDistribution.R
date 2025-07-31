# P(X==4)
n=12; p=0.2

dbinom(4,size = 12,prob = 0.2)

cmf<-function(x,n,p)
{
  cummulative=0
  for(i in 0:x){
    cummulative=cummulative+dbinom(i,n,p)
  }
  return (cummulative)
}

# P(X<=4)
cmf(4,n,p)
pbinom(4,n,p)

#P(4<=X<=7)
#F(b)-F(a-1)
n=15;p=0.2
liesBetween<-function(a,b,n,p)
{
  return (pbinom(b,n,p) - pbinom(a-1,n,p))
}

liesBetween(4,7,n,p)
cmf(7,n,p)-cmf(4-1,n,p)

plot(liesBetween(4,7,n,p))


#P(X>=8)
compliment<-function(x,n,p)
{
  return(1 - pbinom(x-1,n,p))
}

compliment(8,n,p)
1-cmf(8-1,n,p)


plot(compliment(8,n,p))
pie(compliment(8,n,p))



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
# [Workspace loaded from ~/.RData]
# 
# > dbinom(4,size = 12,prob = 0.2)
# [1] 0.1328756
# > cmf(4,n,p)
# Error in cmf(4, n, p) : could not find function "cmf"
# > cmf<-function(x,n,p)
#   + {
#     +   cummulative=0
#     +   for(i in 0:x){
#       +     cummulative=cummulative+dbinom(i,n,p)
#       +   }
#     +   return (cummulative)
#     + }
# > cmf(4,n,p)
# Error: object 'n' not found
# > n=12; p=0.2
# > cmf(4,n,p)
# [1] 0.9274445
# > pbinom(4,n,p)
# [1] 0.9274445
# > n=15;p=0.2;
# > liesBetween(4,7,n,p)
# Error in liesBetween(4, 7, n, p) : could not find function "liesBetween"
# > liesBetween(4,7,n,p)
# Error in liesBetween(4, 7, n, p) : could not find function "liesBetween"
# > liesBetween<-funtion(a,b,n,p){
#   Error: unexpected '{' in "liesBetween<-funtion(a,b,n,p){"
#   > liesBetween<-funtion(a,b,n,p){
#     Error: unexpected '{' in "liesBetween<-funtion(a,b,n,p){"
#     > liesBetween<-funtion(a,b,n,p){
#       Error: unexpected '{' in "liesBetween<-funtion(a,b,n,p){"
#       > liesBetween<-funtion(a,b,n,p){
#         Error: unexpected '{' in "liesBetween<-funtion(a,b,n,p){"
#         > liesBetween<-function(a,b,n,p)
#           + {
#             +   return (pbinom(b,n,p) - pbinom(a-1,n,p))
#             + }
#         > liesBetween(4,7,n,p)
#         [1] 0.3475981
#         > compliment<-function(x,n,p)
#           + {
#             +   return(1 - pbinom(x-1,n,p))
#             + }
#         > compliment(8,n,p)
#         [1] 0.00423975
#         > plot(compliment(8,n,p))
#         > plot(liesBetween(4,7,n,p))
#         > pie(compliment(8,n,p))
#         > compliment(8,n,p)
#         [1] 0.00423975
#         > plot(liesBetween(4,7,n,p))
#         > cmf<-function(x,n,p)
#           + {
#             +   cummulative=0
#             +   for(i in 0:x){
#               +     cummulative=cummulative+dbinom(i,n,p)
#               +   }
#             +   return (cummulative)
#             + }
#         > n=15;p=0.2
#         > cmf(7,n,p)-cmf(4-1,n,p)
#         [1] 0.3475981
#         > liesBetween(4,7,n,p)
#         [1] 0.3475981
#         > 1-cmf(8-1,n,p)
#         [1] 0.00423975
#         > compliment(8,n,p)
#         [1] 0.00423975

