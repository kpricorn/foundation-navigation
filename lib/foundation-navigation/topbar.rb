# http://gnuu.org/2009/07/18/metaprogramming-ruby-pt-1-markaby/
module FoundationNavigation
  class Builder
    attr_accessor :node

    def to_s
      @node.to_s
    end

    def method_missing(name, opts = {}, &block)
      parent = @node
      @node = Node.new(parent, name, opts)
      parent.children << @node if parent
      if block_given?
        val = instance_eval(&block)
        @node.children << val if val.is_a?(String)
      end
      parent ? @node = parent : @node
    end
  end

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

  class Topbar < Builder
    def self.top_bar(&block)
      if block_given?
        new.instance_eval(&block)
      else
        new.instance_eval do
          nav_top_bar do
            ul_title_area do
              li_name
            end
            section_top_bar
          end
        end
      end.to_s
    end

    def nav_top_bar(&block)
      nav(class: 'top-bar', &block)
    end

    def ul_title_area(&block)
      ul(class: 'title-area', &block)
    end

    def li_name(&block)
      li(class: 'name', &block)
    end

    def section_top_bar(&block)
      section(class: 'top-bar-section', &block)
    end
  end
end
