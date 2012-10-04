# == Schema Information
#
# Table name: themeparks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Themepark do
  before { @themepark = Themepark.new(name: "Themepark Name", location: "Themepark location") }

  subject { @themepark }

  it { should respond_to(:name) }
  it { should respond_to(:location) }

  it { should be_valid }

  describe "when name is not present" do
    before { @themepark.name = " " }
    it { should_not be_valid }
  end

  describe "when location is not present" do
    before { @themepark.location = " " }
    it { should_not be_valid }
  end

  describe "when theme park name is already taken" do
    before do
      themepark_with_same_name = @themepark.dup
      themepark_with_same_name.save
    end

    it { should_not be_valid }
  end
end