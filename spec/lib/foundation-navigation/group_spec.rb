require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/group'

# <ul class="left">
# ...
# </ul>

module FoundationNavigation

  describe Group do

    describe '#new' do
      context 'without parameters' do
        it 'renders an empty ul' do
          expect(subject.to_s).to have_tag('ul')
        end
      end

      context 'with orientation' do
        it 'adds the orientation class' do
          expect(Group.new(orientation: 'left').to_s).to have_tag('ul.left')
        end
      end
    end
  end

end
