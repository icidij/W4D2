

class Employee

    attr_reader :name,:salary,:title
    def initialize(name,salary,title)
        @name = name
        @salary = salary
        @title = title
    end

    def bonus(multiplier)
        @salary * multiplier
    end



end