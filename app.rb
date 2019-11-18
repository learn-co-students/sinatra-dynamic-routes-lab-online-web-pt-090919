require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reversed = params[:name].reverse
    "#{@reversed}"    
  end 

  get '/square/:number' do 
    @number = params[:number].to_i 
    square = @number ** 2
    "#{square}"
  end 

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    "#{@phrase}" * @number 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    sentence = []
    params.each do |param, value| 
      sentence << value 
    end 
    complete = sentence.join(" ")+"."
    "#{complete}"
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation 
    when "add" then "#{@num1 + @num2}"
    when "subtract" then "#{@num1 - @num2}"
    when "multiply" then "#{@num1 * @num2}"
    when "divide" then "#{@num1 / @num2}"
    end 
  end 

end