class MyUser
    attr_accessor :name, :email

    def initialize(attributes = {})
        @name = attributes[:name]
        @email = attributes[:email]
    end

    def print_value
        @name + '..' + @email;
    end
end