class Rectangle2
    attr :x, :y, :width, :height
    def initialize x_or_params = 0, y = 0, with = 0, height = 0
        if(x_or_params is Hash)
            @x = x_or_params[:x]
            @y = x_or_params[:y]
            @width = x_or_params[:width]
            @height = x_or_params[:height]
        else
            @x = x_or_params
            @y = y
            @width = width
            @height = height
        end
    end
end