class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        actors = self.auditions.map { |role| role.actor }
    end

    def locations
        locations = self.auditions.map { |role| role.location }
    end

    def lead
        self.auditions.find{|role| role.hired == true} || "no actor has been hired for this role"
    end

    def understudy
        cast = self.auditions.find_all{|role| role.hired == true}.second || "no actor has been hired for understudy for this role"
    end
    
end