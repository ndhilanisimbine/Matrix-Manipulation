#Question number 1

mat <- matrix(1:12, nrow = 3, byrow = TRUE)
mat
# Desired Output:
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    5    6    7    8
# [3,]    9   10   11   12

# Adding  a new row to the matrix containing all 8’s
new_row <- matrix(8, nrow = 1, ncol = 4)
mat <- rbind(new_row, mat)
mat
# Desired Output:
#      [,1] [,2] [,3] [,4]
# [1,]    8    8    8    8
# [2,]    1    2    3    4
# [3,]    5    6    7    8
# [4,]    9   10   11   12

# Adding a new column to the matrix containing all 9’s
new_col <- matrix(9, nrow = 4, ncol = 1)
mat <- cbind(new_col, mat)
mat
# Desired Output:
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    9    8    8    8    8
# [2,]    9    1    2    3    4
# [3,]    9    5    6    7    8
# [4,]    9    9   10   11   12



#Question 2

student_names <- c("Ellen", "Catherine", "Stephen")
homework_scores <- c(91, 94, 100)
attendance_records <- matrix(c(TRUE, TRUE, FALSE, TRUE, FALSE, TRUE), nrow = 2, byrow = TRUE)

lst <- list(
  names = student_names,
  scores = homework_scores,
  attendance = attendance_records
)

lst$names
# Output:
# [1] "Ellen"     "Catherine" "Stephen"

lst$scores[lst$names == "Stephen"]
# Output:
# [1] 100

lst$attendance[, lst$names == "Catherine"]
# Output:
# [1]  TRUE FALSE







#Question 3 

gender <- c(rep("male", 25), rep("female", 30))

gender_factor <- factor(gender)

gender_counts <- table(gender_factor)

print(gender_counts)


# Output:
# gender_factor
# female   male 
#     30     25 


#Question 4
data(airquality)
num_missing_ozone <- sum(is.na(airquality$Ozone))
num_missing_ozone
# Desired Output:
# [1] 37

#Question 5 

data(airquality)

subset_data <- airquality[airquality$Ozone > 31 & airquality$Temp > 90, ]



# Calculating the mean of Solar.R in this subset, excluding missing values
mean_solar_r <- mean(subset_data$Solar.R, na.rm = TRUE)
mean_solar_r
# Output:
# [1] 212.8


#Question 6

data(airquality)

airquality_copy <- airquality

median_temp <- median(airquality_copy$Temp, na.rm = TRUE)

airquality_copy$hotcold <- ifelse(airquality_copy$Temp > median_temp, "hot", "cold")
head(airquality_copy, 12)
# Output:
#    Ozone Solar.R Wind Temp Month Day hotcold
# 1     41     190  7.4   67     5   1    cold
# 2     36     118  8.0   72     5   2    cold
# 3     12     149 12.6   74     5   3    cold
# 4     18     313 11.5   62     5   4    cold
# 5     NA      NA 14.3   56     5   5    cold
# 6     28      NA 14.9   66     5   6    cold
# 7     23     299  8.6   65     5   7    cold
# 8     19      99 13.8   59     5   8    cold
# 9      8      19 20.1   61     5   9    cold
# 10    NA     194  8.6   69     5  10    cold
# 11     7      NA  6.9   74     5  11    cold
# 12    16     256  9.7   69     5  12    cold

tail(airquality_copy, 12)
# Output:
#    Ozone Solar.R Wind Temp Month Day hotcold
# 142    24     259  9.7   73     9  19    cold
# 143    16     286  9.7   75     9  20    cold
# 144    29     287  9.7   76     9  21     hot
# 145    14     242 16.5   77     9  22     hot
# 146    30     186  9.2   72     9  23    cold
# 147    14     220 10.9   68     9  24    cold
# 148    18     264 10.9   73     9  25    cold
# 149    20     223 10.3   76     9  26     hot
# 150    20      78  6.9   68     9  27    cold
# 151    13     182  6.3   64     9  28    cold
# 152    23     220  8.0   71     9  29    cold
# 153    21     215  7.4   67     9  30    cold


#Question 7

integers <- 1:100

squared_integers <- integers^2

even_squares <- squared_integers[squared_integers %% 2 == 0]
odd_squares <- squared_integers[squared_integers %% 2 != 0]

sum_even_squares <- sum(even_squares)
sum_odd_squares <- sum(odd_squares)

final_result <- sum_even_squares - sum_odd_squares
final_result
# Output:
# [1] -5050

#Question 8 

mat1 <- matrix(rep(seq(4), 4), ncol = 4)

print(mat1)
# Output:
# [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    1    2    3    4
# [3,]    1    2    3    4
# [4,]    1    2    3    4

result <- apply(mat1, 1, function(x) sum(x) + 2)
print(result)
# Output:
# [1] 12 12 12 12




#Question 9 


set.seed(42)

selected_states <- sample(state.name, 10)

print(selected_states)
# Output:
# [1] "Maine"        "Vermont"      "Kentucky"     "Maryland"     "Nebraska"    
# [6] "Connecticut"  "Ohio"         "Montana"      "Wisconsin"    "Mississippi" 

sorted_states <- sort(selected_states)

print(sorted_states)
# Output:
# [1] "Connecticut"  "Kentucky"     "Maine"        "Maryland"     "Mississippi" 
# [6] "Montana"      "Nebraska"     "Ohio"         "Vermont"      "Wisconsin"



#Question 10 

xct <- as.POSIXct("1969-07-20 20:18:00", tz = "UTC")

print(xct)
# Output:
# [1] "1969-07-20 20:18:00 UTC"

current_time <- Sys.time()

years_since_landing <- as.numeric(difftime(current_time, xct, units = "weeks")) / 52.1775

print(years_since_landing)
# Output:
# [1] 55.0108508 
































