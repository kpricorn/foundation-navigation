require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/topbar'

describe FoundationNavigation::Topbar do

  subject do
    Class.new do
      include Padrino::Helpers::OutputHelpers
      include FoundationNavigation::Topbar
    end.new
  end

  describe '#top_bar' do
    context 'without parameters' do
      it 'generates an empty top-bar structure' do
        expect(subject.top_bar).to have_tag(:nav, with: { class: 'top-bar' }) do
          with_tag :ul, with: { class: 'title-area' } do
            with_tag :li, with: { class: 'name' }
          end
        end
      end
    end
  end

end
