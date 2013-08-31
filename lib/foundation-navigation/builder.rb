require_relative './node'

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

end
