import random
from blackjack_art import logo

cards = [11,2,3,4,5,6,7,8,9,10,10,10,10]

def selectRandom():
    result_rand = random.choice(cards)
    return result_rand

def cards_player():
    player_count= 0
    player_count += beginCountPlayer
    
    again = True
    while again:
        getCard = input("Do you want get one more card? Type 'y' or 'n'\n")
        if getCard == 'y':
            again = True
            card3_player = selectRandom()
            if selectRandom() == 11 and player_count >11 :
                card3_player ==1
            print(f"\nYou get a {card3_player}")
            player_count+= card3_player
            print(f"You have got {player_count} on the hand\n")
        else:
            again = False
            return player_count
    return player_count
            
def cards_dealer():
    dealer_count = 0
    dealer_count += beginCountDealer   
    while dealer_count <= 16:
        if selectRandom() == 11 and dealer_count >11 :
            dealer_count+=1
        else:
            dealer_count+= selectRandom()
        if dealer_count >= 17:
            result = dealer_count
            return result
    return dealer_count

def playerOrDealer(score_dealer, score_player):
    
    if score_dealer > 21 and score_player > 21:
        print(f"\nDealer has {score_dealer}, Player has {score_player}\n Dealer WINS, Player lost.")
    elif score_dealer > 21 and score_player <= 21:
        print(f"\nDealer has {score_dealer}, Player has {score_player}\nDealer Bust, Player WINS")
    elif score_dealer <=21 and score_player > 21:
        print(f"\nDealer has {score_dealer}, Player has {score_player}\n Dealer WINS, Player Bust")
    elif score_dealer < 21 and score_player < 21 and score_dealer==score_player:
        print(f"\nDealer has {score_dealer}, Player has {score_player}\nNo one wins.")
    elif score_dealer < 21 and score_player < 21 and score_dealer > score_player:
            print(f"\nDealer has {score_dealer}, Player has {score_player}\nDealer WINS, Player Bust")
    elif score_dealer < 21 and score_player < 21 and score_dealer < score_player:
            print(f"\nDealer has {score_dealer}, Player has {score_player}\nDealer Bust, Player WINS")

print(logo)
print("Welcome to BlackJack\n")
beginCountDealer = 0
beginCountDealer += selectRandom()
print(f"Dealer has {beginCountDealer}\n")
beginCountPlayer = 0
beginCountPlayer += selectRandom()
print(f"You get a {beginCountPlayer}")
a = selectRandom()
beginCountPlayer += a
print(f"You get a {a}, and have {beginCountPlayer} on the hand")
score_dealer = cards_dealer()
score_player = cards_player()
playerOrDealer(score_dealer, score_player)




        
    

