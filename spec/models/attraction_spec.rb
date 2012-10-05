# == Schema Information
#
# Table name: attractions
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  totaltime    :integer
#  totallength  :integer
#  yearbuilt    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  themepark_id :integer
#

require 'spec_helper'

describe Attraction do

  before { @attraction = Attraction.new(name: "Example Attraction", totaltime: 45, totallength: 4000,
                                        yearbuilt: 1995 ) }

  subject { @attraction }

  it { should respond_to(:name) }
  it { should respond_to(:totaltime) }
  it { should respond_to(:totallength) }
  it { should respond_to(:yearbuilt) }
  it { should be_valid }

  describe "when name is not present" do
    before { @attraction.name = " " }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      attraction_with_same_name = @attraction.dup
      attraction_with_same_name.save
    end

    it { should_not be_valid }
  end
end
