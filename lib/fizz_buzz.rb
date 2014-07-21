class FizzBuzz
  def judge_number number
    return 'error' if number <= 0
    return 'fizzbuzz' if divided_by_3?(number) && divided_by_5?(number)
    return 'buzz' if divided_by_3? number
    'fizz'
  end

  private

  def divided_by_3? number
    return true if number%3 == 0
    false
  end

  def divided_by_5? number
    return true if number%5 == 0
    false
  end

end