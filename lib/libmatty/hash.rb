class Hash
    module HashExtensions
        # XXX does the same thing as Hash#invert i think?
        def flip
            map {|k,v| [v,k]}.to_hash
        end
        
        # Model.create(params.deny_keys(:password, :isadmin))
        ##
        def allow_keys(*keys)
            tmp = self.clone
            tmp.delete_if {|k,v| ! keys.include?(k) }
            tmp
        end

        def allow_keys!(*keys)
            delete_if{|k,v| ! keys.include?(k) }
        end

        # Filter a list of keys, rejecting the ones we don't
        # want to allow through.
        def deny_keys(*keys)
            tmp = self.clone
            tmp.delete_if {|k,v| keys.include?(k) }
            tmp
        end

        # {:foo=>"bar"}.xfrm(:foo => :meep) ==> {:meep=>"bar"}
        def xfrm(opts={})
            self.map do |k,v|
                x = [opts.fetch(k, k), v]
                pp x
                x
            end.to_h
        end
        class KeyRequired < RuntimeError; end

        def demand(*args)
            args.each do |a|
                if not self.has_key? a
                    raise KeyRequired, "option #{ a } required"
                end
            end
        end
    end
    include HashExtensions
end
