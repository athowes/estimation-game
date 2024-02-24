# 1. How many times does the average human blink in a year?

# Do you blink when you are asleep? Pretty certain it's no

minutes <- 365 * 24 * 60
waking_minutes <- minutes * 16 / 24 

# Once every 10 seconds
blink_rate_lb <- 6

# Once every second
blink_rate_ub <- 60

lb <- waking_minutes * blink_rate_lb
ub <- waking_minutes * blink_rate_ub

# Answer: 4,200,000 blinks
# You earned 3.40 points!

# 2. How many movies and TV series were there on the US Netflix site in April 2022?

# Hard to quantify this one
# Assume that each movie and TV series only counts once (i.e. episodes don't count as multiple)
# For sure more than 10
# For sure more than 100
# Pretty much for sure more than 1,000
# Around 10,000 seems plausible
# 100,000 seems quite high but not impossible
# Perhaps for sure less than 1,000,000 

# Most confident in the low 1,000 to low 10,000 range
# Feel like they might say "1000s of different choices!"

# They do cycle through availability of things

# Answer: 5,831
# You earned 0.99 points!

# Fair enough, don't know that I could have been much better on this

# 3. What percentage of the world's forests is on EU land?

# Europe is really small (actually)

# TODO: Would like a way to turn quantiles into distributions... contact Tom about this? Or look for package

eu_land_pct_lb <- 0.02
eu_land_pct_ub <- 0.06

# EU is more built up than other parts of the world, so less forested
# But would have been more propensity for forest area before being built up

forest_propensity <- 2^rnorm(1000, mean = -0.5, sd = 0.5)
forest_propensity_lb <- quantile(forest_propensity, 0.1)
forest_propensity_ub <-quantile(forest_propensity, 0.9)

# Just going to do the lb x lb method for now, sorry!
100 * eu_land_pct_lb * forest_propensity_lb
100 * eu_land_pct_ub * forest_propensity_ub

# Answer: 5%
# You earned 5.68 points!

# How many eggs did the Titanic carry?

# I presume this means initially when it set sail
# I think there were 100s of people on the titanic, 100 - 1000 (some were babies though)
# Based on Kaggle question pretty sure is as 100s
# The voyage was for I believe a number of weeks (how long do eggs last?)
# Each person would on average eat around an egg or so per day (lots of variance)
# It's possible for some reason they took no eggs

people <- rlnorm(1000, meanlog = log(400), sdlog = 1)
days <- rnorm(1000, mean = 14, sd = 4)
eggs_per_person_per_day <- 1 # Maybe high if anything?

total_eggs <- people * days * eggs_per_person_per_day

quantile(total_eggs, 0.1)
quantile(total_eggs, 0.9)

# Answer: 40,000
# You lost 0.67 points!

# I was wrong about the number of people on the titanic, it was 1000s

# How many novels were translated from English to German in 1796?
# I put below 100 with 75%

# How much does the Eiffel tower weigh in metric tonnes?
# I put above 7000 with 55% (I don't know how much things weigh: TODO look into this)

# How many zipcodes in California are prime numbers?

# What proportion of numbers are prime?
is_prime <- function(n) n == 2L || all(n %% 2L:ceiling(sqrt(n)) != 0)
max <- 99999
num <- sapply(1:99999, is_prime) |> sum()
num / max

# So around 10% of zip codes are prime

# Does California have above 5000 or below 5000 zip codes? Again hard to say
# I said below with 65%

# What percentage of the biomass of all living humans is the biomass of all living ants?
# I'm pretty sure this is >10% just based on knowing the fact

# How many cats were kept as pets worldwide in 2018?

people_worldwide <- 8 * 10^9
(500 * 10^6) / people_worldwide # 1 cat per 16 people

# I said above 500 million with 75%

# What is the area of Madagascar in square kilometres?

sqrt(700000)

# So a square which is 850km
