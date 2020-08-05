#Kate and Lucy baked their muffins for six days. Kate baked 22,18,23,20,16,20 muffins every day, and Lucy 32, 18,24,18,20,16. 
#Create the required vector for each girl
#Suppose that Kate and Lucy decide to raise money for the Make-A-Wish
#Foundation and asked people to make a donation for every muffin they made. 
#Kate requested $12 per muffin, and Lucy asked for $15 per muffi.
#How do you calculate the total donations that they collected for each day? Compute the total profit for each girl.

kate <- c(22,18,23,20,16,20)
Lucy <- c(32, 18,24,18,20,16)

Total_Kate <- sum(kate)*12
Total_Lucy <- sum(Lucy)*15

Total_Kate
Total_Lucy
