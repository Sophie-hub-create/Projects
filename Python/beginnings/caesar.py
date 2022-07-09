import logo
alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
again = True
print(logo.logo)
while again == True:

  direction = input("Type 'encode' to encrypt, type 'decode' to decrypt:\n")
  text = input("Type your message:\n").lower()
  shift = int(input("Type the shift number:\n"))%26

  def caesar (text, shift, direction):
    cipher_text = ""
    for j in text:
      x = alphabet.index(j)
      if direction == 'encode':
        new_x= x + shift
        cipher_text+= alphabet[new_x]
      elif direction == 'decode':
        new_x= x - shift
        cipher_text+= alphabet[new_x]
    print(f"The {direction}d text is: {cipher_text}")
  
  caesar(text, shift, direction)
  question =(input("Do you want to use the caesar again? type 'yes' or 'no'")) 
  if question == 'yes':
    again = True
  else:
    again = False 