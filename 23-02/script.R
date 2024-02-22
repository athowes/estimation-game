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
