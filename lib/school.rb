class School

    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster[grade]
             @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
        @roster
    

    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
        
    end



  
end
