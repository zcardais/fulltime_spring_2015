class Person
	attr_accessor :first_name, :last_name, :gender, :age, :weight

	def initialize(first_name, last_name, gender, age, weight)

		@first_name = first_name

		@last_name = last_name

		@gender = gender

		@age = age

		@weight = weight

	end

	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender} weighing in at #{weight} pounds."
	end
end

p = Person.new("John", "Smith", "male", 34, 180)

p.introduction