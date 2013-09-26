require 'spec_helper'

describe Building do
  it { should have_valid(:street_address).when('33 Harrison Ave','2765 Forest Glen Trail') }
  it { should_not have_valid(:street_address).when(nil,'') }

  it { should have_valid(:city).when('Boston','Cambridge') }
  it { should_not have_valid(:city).when(nil,'') }

  it { should have_valid(:postal_code).when('02111','60015') }
  it { should_not have_valid(:postal_code).when(nil,'','foo','123456','123','6001a') }
end
