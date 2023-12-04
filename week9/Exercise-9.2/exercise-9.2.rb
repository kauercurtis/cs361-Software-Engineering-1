class Player
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

class PokerPlayer < Player
    attr_reader :hand

    def setHand()
      @hand = []
      @hand.append(nil)
    end
end

class ChessPlayer < Player
    attr_reader :color
    
    def setColor(color)
      @color = color
    end
end

class GoPlayer < Player
    attr_reader :color

    def setColor(color)
      @color = color
    end
end

class Game
    def initialize(players)
        @players = players
        @results = nil
    end

    def get_player_name(index)
        @players[index].name
    end

    def set_results(results)
        @results = results
    end

    def get_results()
        @results
    end
end

class Poker < Game
    def initialize(pokerPlayers)
      @pokerPlayers = pokerPlayers
    end

    def play()
      puts "Players in the poker game:"
      @pokerPlayers.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
      # [pretend there's code here]
      "[pretend these are poker results]"
    end
  
    def get_player_name(index)
      return @pokerPlayers[index].name
    end
  
    def get_player_hand(index)
      return @pokerPlayers[index].hand
    end
end
  
class Chess < Game
    def initialize(chessPlayers)
      @chessPlayers = chessPlayers
    end
  
    def play()
      puts "Players in the chess game:"
      @chessPlayers.length().times { |x| puts "#{self.get_player_name(x)}: #{self.get_player_color(x)}" }
      # [pretend there's code here]
      "[pretend these are chess results]"
    end
  
    def get_player_name(index)
      @chessPlayers[index].name
    end
  
    def get_player_color(index)
      @chessPlayers[index].color
    end 
end
  
class Go < Game
    def initialize(goPlayers)
      @players = goPlayers
    end
  
    def play()
      puts "Players in the go game:"
      @players.each { |player| puts "#{player.name}: #{player.color}" }
      # [pretend there's code here]
      "[pretend these are go results]"
    end
end

class GamePlayer
    def initialize(game)
        @game = game
    end

    def play_game()
        results = @game.play()
        @game.set_results(results)
    end

    def get_score()
        puts @game.get_results()
    end

    def setGame(game)
        @game = game
    end
end
  
pokerPlayers = []
pokerPlayers[0] = PokerPlayer.new("alice")
pokerPlayers[1] = PokerPlayer.new("bob")
pokerPlayers[2] = PokerPlayer.new("chris")
pokerPlayers[3] = PokerPlayer.new("dave")
  
poker = Poker.new(pokerPlayers)
pg = GamePlayer.new(poker);
pg.play_game()
pg.get_score()
  
  puts
  
chessPlayers = []
chessPlayers[0] = ChessPlayer.new("alice")
chessPlayers[0].setColor("white")
chessPlayers[1] = ChessPlayer.new("bob")
chessPlayers[1].setColor("black")

chess = Chess.new(chessPlayers)
pg.setGame(chess)
pg.play_game()
pg.get_score()

  puts
  
goPlayers = []
goPlayers[0] = GoPlayer.new("alice")
goPlayers[0].setColor("white")
goPlayers[1] = GoPlayer.new("bob")
goPlayers[1].setColor("black")
go = Go.new(goPlayers)
pg.setGame(go)
pg.play_game()
pg.get_score()

  
  