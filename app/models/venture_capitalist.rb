class VentureCapitalist
    attr_reader :name, :total_worth
    @@all=[]

    def initialize(name,total_worth)
        @name=name
        @total_worth=total_worth
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{|venture_capitalist| venture_capitalist.total_worth >= 1_000_000_000}
    end

    def offer_contract(startup,type,amount)
        FundingRound.new(startup,self,type,amount)
    end
    def funding_rounds
        FundingRound.all.select{|funding_rounds|funding_rounds.venture_capitalist==self}
    end
    def portfolio
        self.funding_rounds.map{|startups| startups.startup}
    end
    def biggest_investment
        self.funding_rounds.max_by{|investments|investments.investment}
    end

    def invested(domain_name)
        invested_domain=self.funding_rounds.select{|funding_rounds|funding_rounds.startup.domain==domain_name}
        invested_domain.reduce(0){|total,domains| total+= domains.investment}
    end

end
