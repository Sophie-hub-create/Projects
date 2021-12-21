class User:
    def __init__(self, id, name):
        self.id = id
        self.name = name
        self.follower = 0
        self.following = 0
        
    def set_follower(self, a):
        self.follower = a
        
    def follow (self, user):
        self.following += 1
        user.follower +=1
        

user1 = User(1, 'Klaus')
user2 = User(2, 'Svenja')
user2.set_follower(10)
user1.follow(user2)
print(user1.name)
print( user2.name)
print(user2.follower)
print(user1.following)

