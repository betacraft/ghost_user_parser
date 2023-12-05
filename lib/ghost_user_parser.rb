# frozen_string_literal: true

require "csv"

class GhostUserParser
  attr_reader :file_path
  CSV_COLUMNS = ["id", "email", "name", "note", "subscribed_to_emails", "complimentary_plan", "stripe_customer_id", "created_at", "deleted_at", "labels", "tiers"]

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    result = []
    validate_file
    CSV.foreach(file_path, headers: true) do |row|
      result << row.to_h.except('stripe_customer_id')
    end
    result
  end

  private

  def validate_file
    raise "File not found" unless File.exist?(file_path)
    raise "File is not a CSV" unless File.extname(file_path) == ".csv"
    raise "Invalid CSV" unless CSV.read(file_path).first == CSV_COLUMNS
  end

end
