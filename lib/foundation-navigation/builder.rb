require_relative './node'

module FoundationNavigation
  module Builder
    attr_accessor :node

    def left(&block)
      @node.children << FoundationNavigation::MenuGroup.new(
        orientation: 'left', &block
      ).node
    end

    def right(&block)
      @node.children << FoundationNavigation::MenuGroup.new(
        orientation: 'right', &block
      ).node
    end

    def menu_group(*args, &block)
      @node.children << FoundationNavigation::MenuGroup.new(*args, &block).node
    end

    def title_area(*args, &block)
      build_subtree(FoundationNavigation::TitleArea, *args, &block)
    end

    def dropdown(*args, &block)
      build_subtree(FoundationNavigation::Dropdown, *args, &block)
    end

    def divider
      build_subtree(FoundationNavigation::Divider)
    end

    def menu_item(*args, &block)
      build_subtree(FoundationNavigation::MenuItem, *args, &block)
    end

    def build_subtree(klass, *args, &block)
      @node.children << klass.new(*args, &block).node
    end

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
