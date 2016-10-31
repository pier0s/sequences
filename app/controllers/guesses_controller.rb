class GuessesController < ApplicationController
def index


#oarans = {"first_number"=>"4, "second_number"=>"5....}

g = Guess.new
g.first_num=params["first_number"]
g.second_num=params["second_number"]
g.third_num=params["third_number"]
g.save

@list = Guess.all


  render ("guesses/index.html.erb")
end

def answer

  @user_answer = params["rule"]

  render ("guesses/answer.html.erb")
end

def clear

  Guess.delete_all

  render ("guesses/clear.html.erb")
end

end
