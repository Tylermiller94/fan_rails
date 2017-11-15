require 'rails_helper'

describe Subgenre do
  it { should validate_presence_of :name }
end
