# Function to roll a dice
roll_dice <- function() {
  sample(1:6, 1)
}

# Function to play the game
play_game <- function() {
  position <- 1
  num_throws <- 0
  snakes <- c(17, 54, 62, 64, 87, 93, 95, 98)
  ladders <- c(1, 4, 9, 21, 28, 51, 72, 80)
  snake_landing <- c(7, 34, 19, 60, 36, 73, 75, 79)
  ladder_landing <- c(38, 14, 31, 42, 84, 67, 91, 99)
  
  while(position < 100) {
    throw <- roll_dice()
    num_throws <- num_throws + 1
    position <- position + throw
    
    # Check for snakes
    if(position %in% snakes) {
      position <- snake_landing[which(snakes == position)]
    }
    
    # Check for ladders
    if(position %in% ladders) {
      position <- ladder_landing[which(ladders == position)]
    }
  }
  
  return(num_throws)
}

# Play the game multiple times and calculate the average number of throws
num_games <- 1000
throws <- replicate(num_games, play_game())
mean(throws)
