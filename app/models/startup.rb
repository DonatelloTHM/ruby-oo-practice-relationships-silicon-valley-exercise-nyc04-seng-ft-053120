class Startup
    attr_reader :name, :founder, :domain
    @@all=[]
    def initialize(name,founder,domain)
        @name=name
        @founder=founder
        @domain=domain
        @@all<<self
    end

    def pivot(name,domain)
        @name=name
        @domain=domain
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder_name)
        self.all.find{|startups| startups.founder==founder_name}
    end

    def self.domains
        self.all.map{|startups| startups.domain}
    end
    def sign_contract(venture_capitalist,type,amount)
        FundingRound.new(self,venture_capitalist,type,amount)
    end
    def funding_rounds
        FundingRound.all.select{|funding_rounds| funding_rounds.startup==self}
    end
    def num_funding_rounds
        self.funding_rounds.count
    end
    def total_funds
        self.funding_rounds.reduce(0){|total,investments| sum+investments.investment}
    end
    def investors
        self.funding_rounds.map{|investors| investors.venture_capitalist}
    end
    def big_investors
        self.investors.select{|venture_capitalist| venture_capitalist.class.tres_commas_club.find{|venture_cap| venture_cap==venture_capitalist}}
    end

end
