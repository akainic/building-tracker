require 'spec_helper'

describe Owner do
  it { should have_valid(:first_name).when('Dan','Evan') }
  it { should_not have_valid(:first_name).when(nil,'') }

  it { should have_valid(:last_name).when('Pickett','Charles') }
  it { should_not have_valid(:last_name).when(nil,'') }

  it { should have_valid(:email).when('dan.pickett@missioncontrol.com') }
  it { should_not have_valid(:email).when(nil,'','foo') }

end
