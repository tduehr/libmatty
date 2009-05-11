class Dir
  module DirExtensions
    module ClassMethods
      # as with shell pushd/popd
      ##
      def with_dir(d)
        begin
          o = Dir.getwd
          Dir.chdir(d)
          yield
        rescue
          raise
        ensure
          Dir.chdir(o)
        end
      end
    end
    def self.included(klass)
      klass.extend ClassMethods
    end
  end
  include DirExtensions
end