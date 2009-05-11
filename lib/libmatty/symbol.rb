class Symbol
  module SymbolExtentions
    # TODO: this needs to work differently
    # # looks up this symbol as a constant defined in 'ns' (Object by default)
    # def const_lookup(ns=Object)
    #   self.to_s.const_lookup(ns)
    # end
    
    # # :foo_bar.to_class => FooBar
    # def to_class(namespace=Object)
    #     namespace.const_get(self)
    # end
  end
  include SymbolExtentions
end
