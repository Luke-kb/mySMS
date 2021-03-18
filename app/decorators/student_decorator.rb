class StudentDecorator < Draper::Decorator
    delegate_all

    def self.collection_decorator_class
        PaginatingDecorator
    end

    def full_name
        [object.title&.name, object.first_name, object.middle_name, object.last_name].join(' ')
    end 
end
