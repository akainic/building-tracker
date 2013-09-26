require 'spec_helper'

describe State do
  it { should validate_presence_of(:state) }
  it { should have_many(:buildings) }
end
