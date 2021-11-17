# frozen_string_literal: true

RSpec.describe EspIdf::Manifest do
  it "has a version number" do
    expect(EspIdf::Manifest::VERSION).not_to be nil
  end
end
