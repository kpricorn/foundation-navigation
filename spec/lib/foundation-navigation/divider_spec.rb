require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/divider'

# <li class="divider">

module FoundationNavigation

  describe Divider do
    describe '#new' do
      it 'renders a li.divider tag' do
        expect(subject.to_s).to have_tag('li.divider')
      end
    end
  end

end
