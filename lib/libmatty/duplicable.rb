class Object
    # Can you safely .dup this object?
    # False for nil, false, true, symbols, and numbers; true otherwise.
    # TODO: Should be done the other way around not all that will ever
    # inherit from Object can be dupped
    def duplicable?
        true
    end
end

class NilClass #:nodoc:
    def duplicable?
        false
    end
end

class FalseClass #:nodoc:
    def duplicable?
        false
    end
end

class TrueClass #:nodoc:
    def duplicable?
        false
    end
end

class Symbol #:nodoc:
    def duplicable?
        false
    end
end

class Numeric #:nodoc:
    def duplicable?
        false
    end
end
