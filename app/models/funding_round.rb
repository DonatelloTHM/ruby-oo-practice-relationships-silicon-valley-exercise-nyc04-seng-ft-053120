class FundingRound
    attr_reader :startup, :venture_capitalist, :type, :investment
    @@all=[]

    def initialize(startup,venture_capitalist,type,investment)
        @startup=startup
        @venture_capitalist=venture_capitalist
        @type=type
        if(investment<0)
            @investment=0
        
        else
        @investment=investment
        end
        @@all<<self
    end
    def self.all()
        @@all
    end
end
