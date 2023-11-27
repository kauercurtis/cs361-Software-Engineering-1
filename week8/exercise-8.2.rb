class PokerPlayer
  
  attr_reader :name, :hand
  
  def initialize(name)
    @name = name
    @hand = []
    @hand.append(nil)
  end

end

class Poker
  def initialize(pokerPlayers)
    @pokerPlayers = pokerPlayers
  end

  def play_poker()
    puts "Players in the poker game:"
    @pokerPlayers.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_name(index)
    return @pokerPlayers[index].name
  end

  def get_player_hand(index)
    return @pokerPlayers[index].hand
  end
end

class ChessPlayer

  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

end

class Chess
  def initialize(chessPlayers)
    @chessPlayers = chessPlayers
  end

  def play_game()
    puts "Players in the chess game:"
    @chessPlayers.length().times { |x| puts "#{get_player_name(x)}: #{get_player_color(x)}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def get_player_name(index)
    @chessPlayers[index].name
  end

  def get_player_color(index)
    @chessPlayers[index].color
  end

end

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_score()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    case @game_number
    when 1
      poker = Poker.new(@player_list)
      poker.play_poker()
      puts poker.get_results()
    when 2
      chess = Chess.new(@player_list)
      chess.play_game()
      puts chess.get_results()
    when 3
      go = Go.new(@player_list)
      go.play()
      puts go.get_score()
    end
  end
end

pokerPlayers = []
pokerPlayers[0] = PokerPlayer.new("alice")
pokerPlayers[1] = PokerPlayer.new("bob")
pokerPlayers[2] = PokerPlayer.new("chris")
pokerPlayers[3] = PokerPlayer.new("dave")

pg = PlayGames.new(1, pokerPlayers)
pg.play()

puts

chessPlayers = []
chessPlayers[0] = ChessPlayer.new("alice", "white")
chessPlayers[1] = ChessPlayer.new("bob", "black")

pg = PlayGames.new(2, chessPlayers)
pg.play()

puts

pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.play()

