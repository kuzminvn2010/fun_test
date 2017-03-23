require_relative "test_data"

class Test
  def initialize(data, user_name)
    @data = data
    @user_name = user_name
    @points = 0
  end

  def points
    @points
  end

  def ask_name
    if @user_name == "-v"
      puts @data.version
      abort
    end
    if @user_name == nil
      puts "Представьтесь пожалуйста"
      @user_name = STDIN.gets.chomp.to_s
      if @user_name == ""
        @user_name = "Таинственная Персона"
      end
    end
  end

  def interaction
    puts "Добрый день, #{@user_name}! Ответьте пожалуйста честно на несколько " \
      "вопросов, чтобы узнать кое-что о себе."
    for question in @data.questions do
      puts ""
      puts question
      user_input = " "
      until user_input == 1 || user_input == 2 || user_input == 3
        puts "Введите число и нажмите Enter:"
        puts "1 — да"
        puts "2 — нет"
        puts "3 — иногда"
        user_input = STDIN.gets.to_i
      end

      case user_input
      when 1
        @points += 2
      when 3
        @points += 1
      end
    end
  end

  def user_name
    @user_name
  end
end
