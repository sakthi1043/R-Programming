age=readline(prompt = "Enter the age")
age=as.integer(age)
if(age>=18){
  print(paste("Your are eligible for voting: ",age))
}else
{
  print(paste("You are not eligible: ",age))
}