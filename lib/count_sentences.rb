require 'pry'

class String

  def initialize(string)
    @string = string
  end

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    count = 0
    arr = self.split
    arr.map {|string|
      if string.sentence? || string.question? || string.exclamation?
        count += 1
      end
    }
    return count
  end


end