# http://gnuu.org/2009/07/18/metaprogramming-ruby-pt-1-markaby/
module FoundationNavigation
  class Node
    attr_accessor :name, :options, :children, :parent

    def initialize(parent, name, options = {})
      @options = options
      @name = name
      @parent = parent
      @children = []

      if options.is_a?(String)
        @options = nil
        @children = [options]
      end
    end

    def to_s
      if children.size > 0
        "<#{name}#{' ' + attrs unless attrs.empty?}>#{children.join}</#{name}>"
      else
        "<#{name}#{' ' + attrs unless attrs.empty?} />"
      end
    end

    def attrs
      return "" if options.nil?
      options.map {|k, v| "#{k}=#{v.inspect}" }.join(" ")
    end
  end
end
