class Movie < ApplicationRecord
  def flop?
    total_gross < 425_000_000
  end
end
