require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should validate_presence_of(:product_type) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:price) }
end
