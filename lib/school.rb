# code here!

class School 
    attr_reader :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student (student_name, grade_level)
        if !@roster[grade_level]
            @roster[grade_level] = []
        end  
        @roster[grade_level] << student_name
        
    end

    def grade(grade_level)
        @roster[grade_level]
    end
    def sort 
        # @roster.sort_by {|key, value| key}.to_h
        @roster.sort_by{|key, value| key}.map do |grade|
            [grade[0], grade[1].sort]
        end.to_h
    end
end