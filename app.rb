require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name].reverse
    # puts @name
  end
  
  get "/square/:number" do
    @square = (params[:number].to_i**2).to_s
    # puts @square would return 16 #=> nil; p @square could work
  end
  
  # accepts a number and a phrase and returns that phrase in 
  # a single string the number of times given
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase] + "\n"
    @result = @phrase * @number
  end
  
  # concatenates the words and adds a period
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  # Operation
    # adds two numbers together
    # subtracts the second number from the first
    # multiplies two numbers together
    # divides the first number by the second number
  get '/:operation/:number1/:number2' do
    case @operation = params[:operation]
    when 'add'
      @operation = '+'.to_sym
    when 'subtract'
      @operation = '-'.to_sym
    when 'multiply'
      @operation = '*'.to_sym
    when 'divide'
      @operation = '/'.to_sym
    end

    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = @num1.send(@operation, @num2).to_s
  end
end