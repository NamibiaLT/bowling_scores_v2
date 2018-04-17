class Bowling
  def self.score(rolls)
    rolls = remove_gutter_balls(rolls)
    rolls = calculate_spares(rolls)
    rolls = calculate_strikes(rolls)
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

  def self.calculate_spares(rolls)
    new_rolls = rolls.map.with_index do |roll, i|
      if roll == '/'
        spare = 10 - rolls[i - 1]
        next_roll = rolls[i + 1]
        spare + next_roll
      else
        roll
      end
    end
  end

  def self.calculate_strikes(rolls)
    rolls.map.with_index do |roll, i|
      roll == '*'? 10 + rolls[i + 1] + rolls[i + 2] : roll
    end
  end
end
