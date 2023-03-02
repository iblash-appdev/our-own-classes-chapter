# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate
#class Person
#    @first_name = first_name
#    @last_name = last_name
#    @birthdate_birthdate
#end

#def full_name
#  "#{@first_name} #{@last_name}"
#end

#def age
#  today = Date.today
#  years = today.year - @birthdate.year
#  years = 1 if (today.month < @birthdate.month) ||
#  (today.month == @birthdate.month && today.day < @birthdate.day)
#  years
#end
#end
# person = Person.new("John", "Doe", Date.new(1980, 1, 1))

# puts person.full_name

# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  new_person.full_name 
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  other_person.age
# Output:
#=>  45



class Person
  require("date")
  attr_accessor :birthdate

  def age 
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end

  attr_accessor :first_name
  attr_accessor :last_name

  def full_name
    return self.first_name + " " + self.last_name
  end
end
