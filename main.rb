require_relative "test"
require_relative "test_data"
require_relative "result_printer"
user_name = ARGV[0]
data = TestData.new
our_test = Test.new(data, user_name)
our_test.ask_name
our_test.interaction
result_printer = ResultPrinter.new(our_test.points , data)
puts "\n#{our_test.user_name}!"
puts "\nВаш результат теста (ответов 'да' - #{our_test.points}):"
puts result_printer.result
