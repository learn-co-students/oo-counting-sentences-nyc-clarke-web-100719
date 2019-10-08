require 'pry'

class String

  def sentence?
   self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    new_arr = []
    array = self.split
    array.each do |word|
      if word.sentence?
        new_arr << word.split(".")
      end
      if word.question?
        new_arr << word.split("?")
      end
      if word.exclamation?
        new_arr << word.split("!")
      end
    end
    new_arr.flatten.count
  end

end

# complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

# complex_string.count_sentences
