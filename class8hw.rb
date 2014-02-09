#define a method that takes a string (block of text) as an argument
def analyze_text(text_block)

	#create an empty hash
	word_count_hash = {}

	#split the string/block of text into an array (where each word is an array item)
	text_array = text_block.split(" ")

	#go through each item in the array
	text_array.each do |word|

		#if the word is not in the hash yet
		if word_count_hash.key?(word) == false

			#add the word as a key in the hash and make its value equal to one
			word_count_hash[word] = 1

		#else (the word is in the hash already)
		else
			#add one to its value
			value = word_count_hash.fetch(word)
			value += 1
			word_count_hash[word] = value

		end

	end

	#return the hash
	return word_count_hash

end

#define a function that takes a hash as an argument
def most_used_word(word_count_hash)

	#Make an array from all the values of the hash
	values_array = word_count_hash.values()

	#create a reference
	reference = values_array[0]

	#go through each item in the array
	values_array.each do |item|

		#if the array item is greater than the reference
		if item > reference

			#the array item becomes the reference
			reference = item

		end
		
	end

	#find which key the max-value/reference matches with in the hash
	#and print out the key from this pair
	return word_count_hash.key(reference)

end

puts most_used_word(analyze_text("this that this other other thing this this thing"))