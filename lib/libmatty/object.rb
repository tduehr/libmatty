class Object
    module ObjectExtensions
      # don't need these if we're using 1.9
      if not Object::RUBY_FRAMEWORK_VERSION == "1.9"
        # Every object has a "singleton" class, which you can think
        # of as the class (ie, 1.metaclass =~ Fixnum) --- but that you
        # can modify and extend without fucking up the actual class.

        def metaclass; class << self; self; end; end
        def meta_eval(&blk) metaclass.instance_eval &blk; end
        def meta_def(name, &blk) meta_eval { define_method name, &blk }; end
        def try(meth, *args); send(meth, *args) if respond_to? meth; end

        def through(meth, *args)
            if respond_to? meth
                send(meth, *args)
            else
                self
            end
        end
      end

      def pbpaste
        `pbpaste`
      end if RUBY_PLATFORM =~ /darwin/

      ## This is from Topher Cyll's Stupd IRB tricks
      def mymethods
        (self.methods - self.class.superclass.methods).sort
      end
    end
    include ObjectExtensions
end
