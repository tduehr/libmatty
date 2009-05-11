class Integer
    module IntegerExtensions
        # Convert integers to binary strings
        def to_l32; [self].pack "L"; end
        def to_b32; [self].pack "N"; end
        def to_l16; [self].pack "v"; end
        def to_b16; [self].pack "n"; end
        def to_u8; [self].pack "C"; end

        # sign extend
        def sx8; ([self].pack "c").unpack("C").first; end
        def sx16; ([self].pack "s").unpack("S").first; end
        def sx32; ([self].pack "l").unpack("L").first; end

        # Print a number in hex
        def to_hex(pre="0x"); pre + to_s(16); end

        # Print a number in binary
        def to_b(pre=""); pre + to_s(2); end

        def clear_bits(c); (self ^ (self & c)); end

        def ffs
            i = 0
            v = self
            while((v >>= 1) != 0)
                i += 1
            end
            return i
        end
        module ClassMethods
            # Make a bitmask with m-many bits, as an Integer
            def mask_for(m)
                # This is just table lookup for values less than 65

                @@mask ||= {
                    1 => 0x1,
                    2 => 0x3,
                    3 => 0x7,
                    4 => 0xf,
                    5 => 0x1f,
                    6 => 0x3f,
                    7 => 0x7f,
                    8 => 0xff,
                    9 => 0x1ff,
                    10 => 0x3ff,
                    11 => 0x7ff,
                    12 => 0xfff,
                    13 => 0x1fff,
                    14 => 0x3fff,
                    15 => 0x7fff,
                    16 => 0xffff,
                    17 => 0x1ffff,
                    18 => 0x3ffff,
                    19 => 0x7ffff,
                    20 => 0xfffff,
                    21 => 0x1fffff,
                    22 => 0x3fffff,
                    23 => 0x7fffff,
                    24 => 0xffffff,
                    25 => 0x1ffffff,
                    26 => 0x3ffffff,
                    27 => 0x7ffffff,
                    28 => 0xfffffff,
                    29 => 0x1fffffff,
                    30 => 0x3fffffff,
                    31 => 0x7fffffff,
                    32 => 0xffffffff,
                    33 => 0x1ffffffff,
                    34 => 0x3ffffffff,
                    35 => 0x7ffffffff,
                    36 => 0xfffffffff,
                    37 => 0x1fffffffff,
                    38 => 0x3fffffffff,
                    39 => 0x7fffffffff,
                    40 => 0xffffffffff,
                    41 => 0x1ffffffffff,
                    42 => 0x3ffffffffff,
                    43 => 0x7ffffffffff,
                    44 => 0xfffffffffff,
                    45 => 0x1fffffffffff,
                    46 => 0x3fffffffffff,
                    47 => 0x7fffffffffff,
                    48 => 0xffffffffffff,
                    49 => 0x1ffffffffffff,
                    50 => 0x3ffffffffffff,
                    51 => 0x7ffffffffffff,
                    52 => 0xfffffffffffff,
                    53 => 0x1fffffffffffff,
                    54 => 0x3fffffffffffff,
                    55 => 0x7fffffffffffff,
                    56 => 0xffffffffffffff,
                    57 => 0x1ffffffffffffff,
                    58 => 0x3ffffffffffffff,
                    59 => 0x7ffffffffffffff,
                    60 => 0xfffffffffffffff,
                    61 => 0x1fffffffffffffff,
                    62 => 0x3fffffffffffffff,
                    63 => 0x7fffffffffffffff,
                    64 => 0xffffffffffffffff
                }

                if (v = @@mask[m])
                    return v
                end

                # Compute it for crazy values.

                r = 0
                0.upto(m-1) {|q| r |= (1 << q)}
                return r
            end
        end

        def self.included(klass)
            klass.extend(ClassMethods)
        end
    end
    include IntegerExtensions
end
