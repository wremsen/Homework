class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while @game_over = false
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn
    show_sequence
    require_sequence

    round_success_message
    @sequence_length += 1

  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    answer = gets.chomp
    colors = []
    answer.split(' ').each do |ele|
      colors << ele
    end

    if colors != @seq
      @game_over = true
    end

  end

  def add_random_color
    colors = ['red', 'blue', 'yellow', 'green']
    @seq << colors.sample
  end

  def round_success_message
    puts 'You did it!'
  end

  def game_over_message
    puts 'You lost, too bad'
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end