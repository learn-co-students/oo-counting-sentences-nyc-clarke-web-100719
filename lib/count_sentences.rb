require 'pry'

class String

  def sentence?
    self[-1]=="."
  end

  def question?
  self.end_with?("?")
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
 if self.include?(",")
  self.split(",").count
 elsif (self.include?(".")  || self.include?(" ")) && !self.include?(",")
  self.split.count
 else
  self.split.count
 end
  end
end