require 'spec_helper'

describe Member do
  it { should have_one :address }
end
