# create a method 
#   so it would next letter forward
# 

def encrypt(word)
index = 0

while index < word.length
   word[index]= word[index].next[0]
  index += 1
end
return word
end

 encrypt("abcdef")





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

 puts decrypt("bcd")

 decrypt(encrypt("swordfish"))