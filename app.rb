require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    @name
  end
  
  get "/square/:number" do
    @number = params[:number].to_i * params[:number].to_i
    @number.to_s
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @string = ""
    @number.times do
      @string += params[:phrase]
    end
    @string
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
    @string
  end
  
  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @string = params[:number1].to_i+params[:number2].to_i
      when "subtract"
      @string = params[:number1].to_i-params[:number2].to_i
      when "multiply"
      @string = params[:number1].to_i*params[:number2].to_i
      when "divide"
      @string = params[:number1].to_i/params[:number2].to_i
    end
    @string.to_s
  end
  
end