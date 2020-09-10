# #Discrete Variables Problems --------------------------------------------


# Question 1 --------------------------------------------------------------
# 1)	When flipping a fair coin, the probability of heads is 0.5.  
# What is the probability of first observing heads on your 6th flip?

p <- 0.5
q <- 0.5

Prob_Heads_6thFlip <- q^5 * p 
Prob_Heads_6thFlip

paste("The probability of first observing heads on your 6th coin flip is", Prob_Heads_6thFlip*100, "%.")


# Quesiton 2 --------------------------------------------------------------

# 2)	The probability of any email being spam is 0.08.  
# What is the probability that after receiving exactly 4 emails exactly 2 of those will be spam?

p <- 0.08 #probability of mail being spam
q <- 1 - p #probability of main not being spam

Prob_0_spam <- q^4
Prob_1_spam <- choose(4,1) * q^3 * p
Prob_2_spam <- choose(4,2) * q^2 * p^2

paste("The probability of exactly 2 emails being spame is", Prob_2_spam*100, "%.")



# Question 3 --------------------------------------------------------------

# 3)	On average, John can run 8 miles an hour.  
# What is the probability that John can finish a 20 mile run in 2 hours?
