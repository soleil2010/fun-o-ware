require 'gosu';

# base class for minigames
class MiniGame
    def update time

    end
    def draw rect

    end
end
# demo mini game
class TestMiniGame < MiniGame
    def update time
        super time
    end
    def draw rect
        super rect
    end
end

# main game
class FunOWare < Gosu::Window
    def initialize
        @minigames = {
            counter: TestMiniGame,
        }
        @active_games = [
            
        ]
        super 500, 800

        #test
        @active_games.push(@minigames[:counter].new)
    end

    def update
        #time
        time = Time.now.to_f
        virtual_time = time
        # unused for now
        # delta_time = time - (@last_frame_stamp || time)
        # @last_frame_stamp = time

        @active_games.each{|mg| mg.update(virtual_time)}
    end
    def draw
        rect = Rectangle2.new
        @active_games.each(|mg| mg.draw())
    end

    def needs_cursor?
        true
    end
end

FunOWare.new.show