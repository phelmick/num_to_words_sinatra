module InWords

  def in_words
    a1 = %w(zero one two three four five six seven eight nine ten)
    a2 = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    a3 = %w(twenty thirty forty fifty sixty seventy eighty ninety)

    # assuming self not negative
    if self < 10
      a1[self]
    elsif self < 20
      a2[self-10]
    elsif self < 100              # under one hundred
      if self % 10 > 0
        "#{ a3[(self / 10) - 2]} #{ a1[self % 10] }"
      else
        a3[(self / 10) - 2]
      end
    elsif self < 1000             # under one thousand
      s = "#{ (self / 100).in_words } hundred"
      num = self % 100
      if (num) > 0
        s << " " << num.in_words
      end
      s
    elsif self < 1000000            # under one million
      s = "#{ (self / 1000).in_words } thousand"
      num = self % 1000
      if num > 0
        s << " " << num.in_words
      end
      s
    elsif self < 1000000000     # under one billion
      s = "#{ (self / 1000000).in_words } million"
      num = self % 1000000
      if num > 0
        s << " " << num.in_words
      end
      s
    elsif self < 1000000000000  # under one trillion
      s = "#{ (self / 1000000000).in_words } billion"
      num = self % 1000000000
      if num > 0
        s << " " << num.in_words
      end
      s
    elsif self == 1000000000000 # exactly one trillion
      "one trillion"
    end
  end

end

class Integer
  include InWords
end