# frozen_string_literal: true

RSpec.describe GithubPackageDemo do
  it "has a version number" do
    expect(GithubPackageDemo::VERSION).not_to be nil
  end
end
