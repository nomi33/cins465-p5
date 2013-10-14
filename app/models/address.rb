class Address < ActiveRecord::Base

    require 'add_zip'
    require 'add_color'
    require 'cap_fname'
    require 'cap_lname'

    validates_presence_of :fName
    validates_presence_of :lName
    validates_presence_of :email
    validates_presence_of :zip
    validates_presence_of :color

    validate :validate_zip
    validate :validate_color
    validate :capitalize_lName
    validate :capitalize_fName
    #found this help online :)
    validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    
    def validate_zip
        if (!(AddZip.is_legal(self.zip)) || zip.size != 5)
            errors.add :zip, "not valid. must be 12345"
        end
    end
    def validate_color
        if (!(AddColor.is_color(self.color)))
            errors.add :color, "not a valid color"
        end
    end
    def capitalize_fName
        CapFirst.cap(self.fName)
    end
    def capitalize_lName
        CapLast.cap(self.lName)
    end
end 
