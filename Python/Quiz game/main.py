import data
from question_model import Question
from quiz_brain import Brain

question_bank = []
for i in data.question_data:
    question_text = i['text']
    question_answer = i['answer']
    new_question = Question(question_text, question_answer)
    question_bank.append(new_question)
quiz = Brain(question_bank)

quiz.next_question()