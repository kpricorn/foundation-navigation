require_relative './builder'
require_relative './titlearea'

module FoundationNavigation
  class Topbar

    include Builder

    def initialize(title_area: nil, &block)
      title_area ||= TitleArea.new
      if block_given?
        self.instance_eval(&block)
      else
        self.instance_eval do
          nav(class: 'top-bar') do
            section(class: 'top-bar-section')
          end
        end
      end
    end
  end
end
