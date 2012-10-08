require 'spec_helper'

describe "AttractionPages" do

  subject { page }

  #describe "attraction helper test" do
  #  it "should test equal lengths" do
  #    attractions_helper.trackcompare(4424).should == 0
  #  end
  #
  #  it "should test lesser lengths" do
  #    attractions_helper.trackcompare(4400).should == 24
  #  end
  #
  #  it "should test greater lengths" do
  #    attractions_helper.trackcompare(4524).should == 100
  #  end
  #end

  describe "compare" do
    before { visit compare_path }

    it { should have_selector('h1',    text: 'Compare Attractions') }
    it { should have_selector('title', text: full_title('Compare Attractions')) }
  end

  describe "add attraction" do
    before { visit '/compare/new' }

    let(:submit) { "Create" }

    describe "with invalid information" do
      it "should not create an attraction" do
        expect { click_button submit }.not_to change(Attraction, :count)
      end
    end

    #describe "valid add attraction" do
    #  before do
    #    fill_in "Name",                 with: "Attraction Name"
    #    fill_in "Totallength",          with: 777
    #    fill_in "Totaltime",            with: 777
    #    fill_in "Yearbuilt",            with: 1777
    #    select 1, :from => "themepark_id"
    #  end
    #
    #  it "should add an attraction" do
    #    expect { click_button submit }.to change(Attraction, :count).by(1)
    #  end
    #
    #  describe "after adding the attraction" do
    #    before { click_button submit }
    #    let(:attraction) { Attraction.find_by_name('Attraction Name') }
    #  end
    #end
  end
end
