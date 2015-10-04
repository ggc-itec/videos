require './lib/question.rb'

module Quiz 

  Q1 = Question.new('Who is/was POTUS in 2015?','Obama',['Obama','Clinton','Bush','Trump'])

  Q2 = Question.new('Who is/was chief justice in 2015?','Roberts',['Scalia','Kennedy','Roberts','Satomayor'])

  Q3 = Question.new('What is the state capital of Georgia?','Atlanta',['Lawrenceville','Suwanee','Duluth','Atlanta'])

  QUESTION_LIST = [Q1, Q2, Q3]

end
