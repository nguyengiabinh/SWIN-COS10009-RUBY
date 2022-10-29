class Student
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end

end

Student_records = Array.new()
a_student_records1 = Student.new("Vinh", 20)
Student_records << a_student_records1
a_student_records2 = Student.new("Binh", 20)
Student_records << a_student_records2

def print_stuffs(Student_records)
    index = 0
   while (index < Student_records.length)
    puts ("Name " + Student_records[index].name)
    puts ("Age " + Student_records[index].age.to_s)
    index += 1
   end
end
