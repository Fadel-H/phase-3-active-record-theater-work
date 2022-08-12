class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |a|
            a.actor
        end
    end

    def locations
        self.auditions.map do |a|
            a.locations
        end
    end

    def lead
        lead = self.auditions.find_by hired: 1
        lead == nil ? 'no actor has been hired for this role' : lead
    end

    def understudy
        understudy =  self.auditions.where hired: 1
        understudy.second == nil  ? 'no actor has been hired for understudy for this role' : understudy.second
    end
end