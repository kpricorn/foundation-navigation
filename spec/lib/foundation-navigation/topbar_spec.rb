require 'spec_helper'
require 'padrino-helpers'
require 'foundation-navigation/topbar'

module FoundationNavigation

  describe Topbar do
    describe '#top_bar_nav' do

      context 'without parameters' do
        it 'generates the top-bar nav' do
          expect(subject.to_s).to have_tag('nav.top-bar')
        end

        it 'renders title-area' do
          expect(subject.to_s).to have_tag('nav.top-bar > ul.title-area > li.name')
        end

        it 'renders top-bar-section' do
          expect(subject.to_s).to have_tag('nav.top-bar > section.top-bar-section')
        end
      end
    end

  end
end
