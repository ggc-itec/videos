require 'sinatra'
require './lib/quiz.rb'

enable :sessions

get '/' do
  erb :index
end

get '/question' do
  current = 0
  if session['question'] 
    # out of questions, present score
    if session['question'] > Quiz::QUESTION_LIST.length - 1
      return erb :score
    end
    current = session['question']
  else
    session['question'] = 0 
    question = Quiz::QUESTION_LIST[session['question']]
  end 
  question = Quiz::QUESTION_LIST[current]
  erb :question, :locals => { :question => question }
end

post '/question' do
  question = Quiz::QUESTION_LIST[session['question']]
  choice = params['choice']
  result = false
  if question.answer == question.choices[choice.to_i]
     result = true
  end  
  session['question'] = session['question'] + 1
  erb :result, :locals => { :result => result }
end

get '/startover' do
  session.clear
  redirect to "/"
end
