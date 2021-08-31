

class Employee

    attr_reader :name,:salary,:title
    def initialize(name,salary,title, manager = nil)
        @name = name
        @salary = salary
        @title = title
        @manager = assign_manager(manager) if manager != nil
    end

    def assign_manager(manager)
        @manager = manager
        @manager.add_employee(self)
    end

    def bonus(multiplier)
        @salary * multiplier
    end



end

class Manager < Employee
    attr_reader :employees
    def initialize(name, salary, title, manager = nil)
        super
        @employees = []
    end


    def bonus(multiplier)
        sum = 0
        @employees.each do |employee|

            sum += employee.salary
        end

        sum * multiplier
    end

    def add_employee(employee)
        @employees << employee
    end

end