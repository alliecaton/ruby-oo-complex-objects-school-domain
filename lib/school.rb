
class School 

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student (student_name, grade)
      if @roster.has_key?(grade)
            @roster[grade] << student_name
      else
        @roster[grade] = []
        @roster[grade] << student_name
      end
    end 

    def grade (grade)
        @roster.collect do | key, value |
            if key == grade 
                value
            end 
        end.flatten.compact
    end

    def sort
        @roster.collect do |key,value|
            @roster[key] = []
            @roster[key] = value.sort.flatten
        end
        @roster
    end


end 
