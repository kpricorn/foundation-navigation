require_relative './builder'

module FoundationNavigation

  class MenuGroup

    include Builder

    def initialize(orientation: nil, &block)
      params = {}
      params[:class] = orientation if orientation.present?
      ul(params, &block)
    end
  end

end
