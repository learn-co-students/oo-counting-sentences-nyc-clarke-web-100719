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
    count_num = 0

    # if self.sentence? || self.question? || self.exclamation?
    #   count_num = self.split.count
    # end

    self.split.each do |word|
      special_char_count = word.split("").select { |char| char == "." || char == "?" || char == "!" }

      if special_char_count.length > 1
        count_num += 1
        # binding.pry

      else
        count_num += special_char_count.length
      end

    end

    if count_num.nil?
      count_num = 0
    end
    # binding.pry



    return count_num

  end
end