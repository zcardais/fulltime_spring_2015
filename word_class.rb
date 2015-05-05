class Word < String

	def very_long?(string)
		if string.length >= 10
			puts "true"
		end
	end
end

w = Word.new
puts w.very_long?("superduperlongword")

puts w.class

puts w.class.superclass

puts w.length