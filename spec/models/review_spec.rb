require 'rails_helper'

describe Review do
  it { should belong_to :book }
  it { should validate_presence_of :author }
  it { should validate_presence_of :tagline }
  it { should validate_presence_of :rating }
  it  {should validate_presence_of :review }
end
