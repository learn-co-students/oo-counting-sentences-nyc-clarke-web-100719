require 'pry'

class String

  def sentence?
    return true if self.end_with?(".") 
    false
  end

  def question?
    return true if self.end_with?("?") 
    false
  end

  def exclamation?
    return true if self.end_with?("!") 
    false
  end

  def count_sentences
    array_of_words = self.split
    array_of_words.reduce(0) do |num_sentences, word|
      if word.sentence? || word.question? || word.exclamation?
         num_sentences += 1
      end
      num_sentences
    end
  end
end
