require_relative './builder'

module FoundationNavigation

  class MenuGroup

    include Builder

    def initialize(orientation: nil, &block)
      params = {}
      params[:class] = orientation if orientation.present?
      ul(params) do
        if block_given?
          self.instance_eval(&block)
        end
      end
    end
  end

end
