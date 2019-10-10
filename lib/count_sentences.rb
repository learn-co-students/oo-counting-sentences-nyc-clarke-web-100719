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
    ar =[]
    temp = self.split(/\.|\?|!/).each do |sentence| 
      if sentence != ""
        ar << sentence 
      end  
    end  
    ar.size
  end
end