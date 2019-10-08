require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    temp_array = self.split(/\?|\.|!/)
    result_array = []
    temp_array.each{|sentence|
    if sentence != ""
      result_array << sentence
    end 
    }
    result_array.length
  end
end
binding.pry