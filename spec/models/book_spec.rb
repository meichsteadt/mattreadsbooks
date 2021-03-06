require 'rails_helper'

describe Book do
  it {should validate_presence_of :name}
  it {should validate_presence_of :author}
  it {should have_many :reviews}
end
