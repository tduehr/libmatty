class Numeric
    module NumericExtensions
        # This HAS TO BE in the library somewhere already, but: give a fixnum,
        # cap it at some number (ie, max(x, y) -> x). 10.cap(9) => 9.
        def cap(limit); self > limit ? limit : self; end

        # shortcut for packing a single number...
        def pack(arg) ; [self].pack(arg) ; end

    end
    include NumericExtensions
end
