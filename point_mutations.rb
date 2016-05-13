class DNA 
  attr_accessor :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(compare_sequence)
    differences = 0
    @sequence.chars.each_with_index do |char, index|
      compare_letter = compare_sequence[index]
      break unless compare_letter
      differences += 1 unless char == compare_letter
    end
    differences
  end
end