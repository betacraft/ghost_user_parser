# frozen_string_literal: true

RSpec.describe GhostUserParser do

  it "Parses Json" do
    file_path = "#{__dir__}/fixtures/sample_members.csv"
    parsed_file = GhostUserParser.new(file_path).parse
    expect(parsed_file[0].keys).to eq(["id", "email", "name", "note", "subscribed_to_emails", "complimentary_plan", "created_at", "deleted_at", "labels", "tiers"])
  end

  it "Raises error if file not found" do
    file_path = "#{__dir__}/fixtures/sample_members1.csv"
    expect{GhostUserParser.new(file_path).parse}.to raise_error("File not found")
  end

  it "Raises error if file is not a CSV" do
    file_path = "#{__dir__}/fixtures/sample_members.txt"
    expect{GhostUserParser.new(file_path).parse}.to raise_error("File is not a CSV")
  end

  it "Raises error if CSV is invalid" do
    file_path = "#{__dir__}/fixtures/sample_members_invalid.csv"
    expect{GhostUserParser.new(file_path).parse}.to raise_error("Invalid CSV")
  end
end
