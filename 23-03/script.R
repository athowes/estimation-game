# 1. How many cafes were there in France in 2020?

# Population of the UK is 60-70 million
# Population of France is probably similar, maybe slightly larger?
# Number of people to support one cafe
# * 10: definitely no
# * 100: definitely no
# * 1000: potentially right range, wouldn't want to go much larger.. though for what
# size of village would it have a cafe? 

population <- 60 * 10^6

people_per_cafe <- rlnorm(1000, meanlog = log(800), sdlog = 0.5)
people_per_cafe_lb <- quantile(people_per_cafe, 0.1)
people_per_cafe_ub <- quantile(people_per_cafe, 0.9)

population / people_per_cafe_lb
population / people_per_cafe_ub

# Answer: 14,818
# You lost 0.91 points!

# Turns out there are a lot of people per cafe

# What's the total number of words on the Wikipedia page for "Fermi problem"?

words_per_line <- rnorm(1000, mean = 12, sd = 3)
lines_per_paragraph <- rnorm(1000, mean = 5, sd = 1)
paragraphs_per_section <- rnorm(1000, mean = 3, sd = 1)
sections_per_article <- rnorm(1000, mean = 4, sd = 1)

words <- words_per_line * lines_per_paragaph * paragraphs_per_section * sections_per_article
quantile(words, c(0.1, 0.9))

# Answer: 2,109
# You lost 4.44 points!

# Turns out there are lots of sections

# How many different local times are there in Russia?

# Russia spans around 1/3 - 1/4 of the width
# I assume there are something like 24 possible local times
# So we are looking at 6 - 8 local times
# I think they would try to keep it a bit lower, so maybe lb by 4 or 5?

24 / 4
24 / 3

# Answer: 11
# You lost 1.27 points!

# Russia spans more of the width! Should have been aware of this, that 1 / 4 is too low

# How many individual strings are there in the Berliner Philharmoniker orchestra? (Counting one instrument per player, bow-hairs are not included)

# 4 strings per violin
# 4 strings per double bass
# 4 strings per cello
# Could also be viola etc.
# 10s of strings per harp (I think 1 harp, maybe 2)
# Possible there are also guitars

# 4-8 first violins
# 4-8 second violins
# 4-8 third violins
# 4-8 first and second DB
# 4-8 first and second cello

4 * 7
8 * 7

# Answer: 367
# You lost 7.62 points!

# Aaaaa

# How many socks were produced in the world in 2019?

8 * 1000 * 10^6

# Similar to number of socks consumed per person per year
# Though probably higher due to waste and over supply

# I think 1-10 pairs of socks per person per year
# 8000 to 80000 million

# Answer: 21,239 million
# You earned 5.23 points!

# How many seconds does it take for the ISS to cross the horizon, relative to an observer at sea level?

# Hmm...
# How long does the ISS take to orbit the Earth? Hard to know
# What proportion of the total orbit is the horizon? Again I don't really know
# Just going to guess
# Feels strange for an object to take less than 30 seconds to a minute, would have to be like a shooting star
# Could be up to an hour say?
# Question is written in seconds which makes me think it's quite a low number... maybe go half an hour?
# 30 - 3000?

# Answer: 624 seconds
# You earned 0.92 points!

# What proportion of websites are in Spanish?
# Above 6% or below 6%

# I think websites are heavily English...
# Proportion of world population for Spanish is probably closer to 6%
# But I think propensity of websites is less Spanish

# Answer: 4.3%
# You earned 4.05 points!

# What's the density of Earth, in grams per cubic centimeter? (Water has a density of 1 g/cm^3.)
