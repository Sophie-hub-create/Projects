import data
from question_model import Question
from quiz_brain import Brain

go_on = True
while go_on:
    question_bank = []
    for i in data.question_data:
        question_text = i['question']
        question_answer = i['correct_answer']
        new_question = Question(question_text, question_answer)
        question_bank.append(new_question)
    quiz = Brain(question_bank)
    while quiz.still_has_questions():
        quiz.next_question()
        if quiz.still_has_questions() == False:
            go_on= False