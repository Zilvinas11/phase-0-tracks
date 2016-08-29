#ask the user
#get user input on encrypt and decrypt
#if encrypt, run encrypt method
#if decrypt, run decrypt method
#ask the user for password
#get user password and call method based on that password
#print results to screen
#exit program

def encrypt(word)
index = 0

while index < word.length
   word[index]= word[index].next[0]
  index += 1
end
return word
end

 #puts encrypt("abcdef")





def decrypt(word)
index = 0

while index < word.length
  letter= word[index] #takes each letter from the word
  n= "abcdefghijklmnopqrstuvwxyz".index("#{letter}")  # finds index number of the alphabet correspoidng to the letter value
  word[index]= "abcdefghijklmnopqrstuvwxyz"[n-1] #uses index value but 
 
  index +=1
end
return word
end

 #puts decrypt("bcd")

#puts decrypt(encrypt("swordfish")) -- this worked because we were able to call our encrypt method on the word "swordfish" and use that value to call the decrypt method. We got the word "Swordfish" as our result.

puts "Would you like to encrypt or decrypt a password?"
choice = gets.chomp

puts "What would you like your password to be?"
password = gets.chomp

if choice == "encrypt"
	puts encrypt(password)
else
	puts decrypt(password)
end


