class PigLatinizer

    attr_reader :text

# Step 1 - sort sentence into an array of words - Completed
# Step 2 - find out the first consonant/consonant blend of each word and put them in an array (using map)
    # note - a consonant blend is all the consonants in the word before the inital vowel
    # note - if the word starts with a vowel, map and empty string into the new array
# Step 3 - remove the first consonant/consonant blend of each word and get back an array of the words without those consonants (using map)
    # note - if a word begins with a vowel, then we put the whole word into the new new array
# Step 4 - find out the last letter of the word, to determine if it should end in 'ay' (consonant) or 'way' (vowel) (using map) - Completed
# Step 5  - concat everything together in the order of without_initial_consonants, initial_consonants and then end_part

    def initial_consonants
        
        @@sentence.map { |word|
            if word.start_with?('a','e','i','o','u','A','E','I','O','U')        
                 "" 
            else   
                consonant_blend = word.split /([aeiou].*)/
                consonant_blend[0]

            end
        }
    end
    
                                                                                                                                                                   
    def remove_consonants
     
        @@sentence.map { |word|
            if word.start_with?('a','e','i','o','u','A','E','I','O','U')        
                 word 
            else        
                consonant_blend = word.split /([aeiou].*)/
                consonant_blend[1]
            end
        }
    end

    def last_word
       
        @@sentence.map { |word|
            if word.start_with?('a','e','i','o','u','A','E','I','O','U')        
                 "way" 
            else        
                 "ay"
            end
        }
       
    end

    def piglatinize(text)
        @@sentence = text.split(" ")
        part_one = remove_consonants
        part_two = initial_consonants
        part_three = last_word

        translation = ""
     
        @@sentence.each_with_index {|word, index|
                translation += part_one[index] + part_two[index] + part_three[index] + " "
            #for every word in the sentence map 
        }

        translation.rstrip
        
    end

    # binding.pry

end