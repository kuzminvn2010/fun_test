require_relative "test_data"

class ResultPrinter
  def initialize(points, data)
    @points = points
    @data = data
  end

  def result
    case @points
    when 30..36
      return @data.results[0]
    when 25..29
      return @data.results[1]
    when 19..24
      return @data.results[2]
    when 14..18
      return @data.results[3]
    when 9..13
      return @data.results[4]
    when 4..8
      return @data.results[5]
    when 0..3
      return @data.results[6]
    end
  end
end
