require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:available) }
  it { should validate_presence_of(:published) }
  it { should validate_presence_of(:available_since) }
  it { should validate_presence_of(:published_since) }
  it { should validate_presence_of(:price) }
end
