require_relative './builder'

module FoundationNavigation

  class Group

    include Builder

    def initialize(orientation: nil, &block)
      params = {}
      params[:class] = orientation if orientation.present?
      ul(params)
    end
  end

end
