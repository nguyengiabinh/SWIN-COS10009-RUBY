require './input_functions'

class Unit
    attr_accessor :name, :location
    def initialize(name,location)
        @name = name
        @location = location
    end
end

def read_units
    count = read_integer("Enter a number of units")
    units = Array.new()
    i = 0
    while (i < count)
        units << read_unit
        i -= 1
    end
    return units
end

def read_unit
    name = read_string("unit name")
    location = read_string("unit location")
    unit = Unit.new(name,location)
    return unit
end

def print_units(units)
    puts("i am printing my units")
    i = 0
    while(i < units.length)
        puts("units #{i}")
        print_unit(units[i])
        i += 1
    end
end

def print_unit
    puts(Unit.name)
    puts(Unit.location)

end

def main
    units = read_units
    print_units(units)
end
main


