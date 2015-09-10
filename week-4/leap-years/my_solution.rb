# Leap Years

# I worked on this challenge with: Hana Worku


# Your Solution Below

def leap_year?(year)
  if (year % 100 == 0)
    if (year % 400 == 0)
      true
    else
      false
    end
  elsif (year % 4 == 0)
    true
  else
   false
 end
end
