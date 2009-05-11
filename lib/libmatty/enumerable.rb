module Enumerable
  module EnumerableExtensions
    def each_recursive(&block)
      self.each do |n|
        block.call(n)
        n.each_recursive(&block) if n.kind_of? Array or n.kind_of? Hash
      end
    end
    
    # return a random selection from any list of anything XXX
    def choice
      rand
    end
  end
  include EnumerableExtensions
end
