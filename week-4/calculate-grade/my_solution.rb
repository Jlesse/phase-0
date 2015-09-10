# Calculate a Grade

# I worked on this challenge with: Hana Worku


# Your Solution Below

def get_grade (average)
grade

  if (average >= 90) && (average <= 100)
    grade = 'A'
  elsif average >= 80
    grade = 'B'
  elsif average >=70
    grade = 'C'
  elsif average >=60
    grade = 'D'
  elsif average < 60
    grade = 'F'
  else
    grade = "not a valid grade entry"
  end
  return grade
end