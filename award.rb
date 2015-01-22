class Award 
    attr_accessor :name, :expires_in, :quality

    def initialize(name, expires_in, quality)
        @name = name
        @expires_in = expires_in
        self.quality = quality
    end

    def quality=(quality)
        @quality = quality 
        
        if (self.name == 'Blue Distinction Plus')
            @quality = 80
        elsif (quality > 50 && self.name != 'Blue Distinction Plus')
            @quality = 50
        elsif (quality <= 0)
            @quality = 0
        end
    end
end