# code here!
class School
    attr_accessor :roster, :grade, :name
    def initialize(name)
        @name= name
        @roster = {}
    end

    #def roster
    #    roster = {}
    #end
    
    def add_student(student, grade)
        self.roster[grade] ||= []
        self.roster[grade] << student   
    end

    def grade(grade)
        roster.detect do |x, y|
            if x == grade
                return y
            end
        end
    end

    def sort
        result = {}
        roster.each do |x,y|
            result[x] =y.sort
        end
        result
    end
end
