require_relative './builder'
require_relative './titlearea'

module FoundationNavigation
  class Topbar < Builder
    def initialize(title_area: nil, &block)
      title_area ||= TitleArea.new
      if block_given?
        self.instance_eval(&block)
      else
        self.instance_eval do
          nav_top_bar do
            section_top_bar
          end
        end
      end
    end

    def nav_top_bar(&block)
      nav(class: 'top-bar', &block)
    end

    def section_top_bar(&block)
      section(class: 'top-bar-section', &block)
    end
  end
end
