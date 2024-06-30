# Function to simulate the birthday problem
birthday_problem <- function(n, num_trials) {
  same_birthdays <- 0
  
  for (i in 1:num_trials) {
    birthdays <- sample(1:365, n, replace = TRUE)
    if (any(duplicated(birthdays))) {
      same_birthdays <- same_birthdays + 1
    }
  }
  
  return(same_birthdays / num_trials)
}

# Run the simulation
n <- 23  # number of people in the room
num_trials <- 10000  # number of trials to run

prob_same_birthday <- birthday_problem(n, num_trials)
cat("The probability of at least two people sharing the same birthday with", n, "people is approximately", prob_same_birthday, "\n")

