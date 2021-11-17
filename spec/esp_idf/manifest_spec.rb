# frozen_string_literal: true

RSpec.describe ESPIDF::Manifest do
  it "has a version number" do
    expect(ESPIDF::Manifest::VERSION).not_to be nil
  end
end
