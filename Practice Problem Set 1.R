

# Question 1 --------------------------------------------------------------


# Question 2 --------------------------------------------------------------

  #Sarah and Adam plan to play a series of 5 tennis matches.  They agree that the overall winner must win at 
  #least 3 of the 5 individual matches. In each match, the probability of Sarah winning is 65%. Assuming that 
  #each game is independent, what is the probability that Sarah will win the series?  What is the probability 
  #that Adam will win the series? 
    
    #store the probabilities that Sarah will win or lose each match. 
    sarah_match_win <- 0.65
    sarah_match_lose <- 0.35
    
    #calculate the probability of Sarah winning 3, 4, or 5 matches in the series. 
    prob_sarah_wins_3_matches <- choose(5,3) * sarah_match_win^3 * sarah_match_lose^2
    prob_sarah_wins_4_matches <- choose(5,4) * sarah_match_win^4 * sarah_match_lose^1
    prob_sarah_wins_5_matches <- sarah_match_win^5
    
    #calculate the probability of Sarah winning the series, then the probablity of Adam winning the series. 
    prob_sarah_wins_series <- sum(prob_sarah_wins_3_matches, prob_sarah_wins_4_matches, prob_sarah_wins_5_matches)
    prob_adam_wins_series <- 1 - prob_sarah_wins_series
    
    #printing out answer to the question. 
    paste(
      "The probability that Sarah will win the series is", prob_sarah_wins_series*100, "%.",
      "The probability that Adam will win the series is", prob_adam_wins_series*100, "%."
      )


# Question 3 --------------------------------------------------------------


# Question 4 --------------------------------------------------------------


# Question 5 --------------------------------------------------------------

  

    