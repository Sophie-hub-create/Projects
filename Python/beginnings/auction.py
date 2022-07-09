from auction_art import auctionLogo

print(auctionLogo)
again = True
bid_log = {}
while again == True:
  bidders_name = input("Whats your name?")
  offer = int(input("Whats your bid?"))
 
  bid_log [bidders_name] = offer

  other = input = ("Are there any other bidders? Type 'yes' for yes, 'no' for no")
  if other =="no":
    again = False
    biggest_bid = 0
    winner = ""
    for i in bid_log:
      actual = bid_log[i]
      if actual > biggest_bid:
        biggest_bid = actual
        winner = i
    print(f"The winner ist {winner} with a bit about {biggest_bid} ")
  if other == "yes": 
    clear()

