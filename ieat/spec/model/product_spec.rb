require 'rails_helper'

RSpec.describe Product do
  it { should belongs_to(:restaurant) }
  it { should validade_presence_of :name }
end