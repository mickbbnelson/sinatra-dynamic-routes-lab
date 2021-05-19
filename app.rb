require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words1 = params[:word1] 
    @words2 = params[:word2] 
    @words3 = params[:word3] 
    @words4 = params[:word4] 
    @words5 = params[:word5]
    "#{@words1} #{@words2} #{@words3} #{@words4} #{@words5}."
  end

  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      @result = @number1 + @number2
    elsif params[:operation] == "subtract"
      @result = @number1 - @number2
    elsif params[:operation] == "multiply"
      @result = @number1 * @number2
    else
      @result = @number1 / @number2
    end
    "#{@result}"
  end
end