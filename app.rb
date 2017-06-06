require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @sum = @num1 + @num2
    @diff = @num1 - @num2
    @product = @num1 * @num2
    @quotient = @num1 / @num2

    if @operation == "add"
      "#{@sum}"
    elsif @operation == "subtract"
      "#{@diff}"
    elsif @operation == "multiply"
      "#{@product}"
    elsif @operation == "divide"
      "#{@quotient}"
    else
      "Put in a correct operator"
    end
  end
end
