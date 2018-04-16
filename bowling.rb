class Bowling
  def self.score(rolls)
    rolls = remove_gutter_balls(rolls)
    rolls = rolls.map.with_index do |roll, i|
      if roll == '/'
        spare = 10 - rolls[i-1]
        next_roll = rolls[i + 1]
        spare + next_roll
      else
        roll
      end
    end
    rolls.sum
  end

  def self.remove_gutter_balls(rolls)
    new_rolls = rolls.map do |roll|
      if roll == '-'
        0
      else
        roll
      end
    end
  end


end
