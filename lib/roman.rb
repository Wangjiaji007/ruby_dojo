class Roman

  def initialize
    @@letters_10 = {1 => 'I', 10 => 'X', 100 => 'C', 1000 => 'M'}
    @@letters_5 = {1 => 'V', 10 => 'L', 100 => 'D'}
  end

  def encode num
    length = num.to_s.length
    ratio = 1
    result = ''
    length.times do
      unit = num%10
      result = roman_letter(unit,ratio) + result
      num /= 10
      ratio *= 10
    end
    result
  end

  def roman_letter n, ratio
    roman_letter = ''
    roman_letter = @@letters_10[ratio]+@@letters_10[ratio*10] if n==9
    roman_letter = @@letters_5[ratio]+@@letters_10[ratio]*(n-5) if n<9 && n>=5
    roman_letter = @@letters_10[ratio]+@@letters_5[ratio] if n==4
    roman_letter = @@letters_10[ratio]*n if n<4 && n>0
    roman_letter
  end

end
