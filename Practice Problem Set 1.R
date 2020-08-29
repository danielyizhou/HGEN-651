

# Question 1 --------------------------------------------------------------
  #Using Matrix A below, find A-1, showing your working with determinant, cofactor and adjoint matrices, and 
  #then demonstrate that AA-1 = I, where I is an identity matrix.
  # A =	4	8	9
  #     2	1	6
  #     7	5	2

    #step 1 - find the determinant of matrix A
    A <- matrix(c(4,2,7,8,1,5,9,6,2), 3, 3) #make the matrix specified in the question
    A_det <- det(A)  #use det() function to find the determinant.
    A_det #since this value is non-zero, there is an inverse to be found.
    
    #step 2 - create the co-factor matrix 
    matrix_indices <- c(1,2,3) #setup for function
    #write a function to return the cofactor of each element in the matrix
    cofactor <- function (matrix, i, j){
      submatrix_rows <- matrix_indices[-i]
      submatrix_columns <- matrix_indices[-j]
      submatrix <- matrix[submatrix_rows, submatrix_columns]
      signed_minor <- (-1)^(i+j) * det(submatrix)
      return(signed_minor)
    }
    
    #make a vector of all cofactors in the matrix
    cofactor_values <- NULL
    for (column in 1:3) {
      for (row in 1:3){
        cofactor_values <- c(cofactor_values, cofactor(A, row, column))
      }
    }
    #create the cofactor matrix 
    cofactor_matrix <- matrix(cofactor_values, 3, 3)
    
    #step 3 - create the adjunct matrix
    adjunct_matrix <- t(cofactor_matrix) #simply transpose the cofactor matrix to get the adjunct matrix
    
    #step 4 - divide each element of the adjunct matrix by the determinant to get the inverse matrix
    A_inverse_matrix <- 1/A_det * adjunct_matrix
    
    #step 5 - confirm that the matrix * inverse matrix = identity matrix
    
    matrix_check <- A %*% A_inverse_matrix
    matrix_check #the result is very very close to a 3x3 identity matrix
    
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

  

    