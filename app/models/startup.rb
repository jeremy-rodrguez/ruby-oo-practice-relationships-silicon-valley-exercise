class Startup

    attr_accessor :name, :domain, :pivot
    attr_reader :founder

    @@all = []
    
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @pivot = pivot
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        Startup.all.find { |startup|
            startup.founder == founder
        }
    end

    def self.domains
        domain.self
    end
end
