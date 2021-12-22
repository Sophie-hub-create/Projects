
class Brain:
    def __init__(self, q_list):
        self.user_number = 0
        self.question_number = 0
        self.question_list= q_list
    
    def still_has_questions(self):
        if self.question_number < len(self.question_list):
            return True
        else:
            return False
            
        
    def next_question(self):
        current_question = self.question_list[self.question_number]
        self.question_number +=1
        user =input(f"\nQ.{self.question_number}: {current_question.text} (True/False): ")
        if user == current_question.answer:
            self.user_number+=1
            print(f"Yout got it right!\nThe correct answer was: {user}\nYour current score is: {self.user_number}/{self.question_number}")
        else:
            print(f"That's wrong.\nThe correct answer was: {user}\nYour current score is: {self.user_number}/{self.question_number}")