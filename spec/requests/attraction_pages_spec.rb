require 'spec_helper'

describe "AttractionPages" do

  subject { page }

  describe "compare" do
    before { visit compare_path }

    it { should have_selector('h1',    text: 'Compare Attractions') }
    it { should have_selector('title', text: full_title('Compare Attractions')) }
  end
end
