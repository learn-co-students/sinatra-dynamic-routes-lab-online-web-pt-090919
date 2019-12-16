require_relative 'config/environment'

class App < Sinatra::Base
   get "/reversename/:name" do
    @name = params[:name]
    @reverse = @name.reverse
    "#{@reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    @square = @num.to_i**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    @string = @phrase * @num.to_i
    "#{@string}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1]
    @num2 = params[:number2]
    @op = params[:operation]
    @add = @num1.to_i + @num2.to_i
    @subtract = @num1.to_i - @num2.to_i
    @multiply = @num1.to_i * @num2.to_i
    @divide = @num1.to_i / @num2.to_i
    if @op == "add"
      "#{@add}"
    elsif @op == "subtract"
      "#{@subtract}"
    elsif @op == "multiply"
      "#{@multiply}"
    elsif @op == "divide"
      "#{@divide}"
    end
  end

end