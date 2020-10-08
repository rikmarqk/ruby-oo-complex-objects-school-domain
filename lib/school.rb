# code here!

class School

    attr_accessor :name, :roster, :student, :grade

    def initialize(name)
        @name = name
        @roster = Hash.new { |hash, key| hash[key] = [] }
    end

    def add_student(student, grade)
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each{ |grade, student| @roster[grade] = student.sort}
    end
end