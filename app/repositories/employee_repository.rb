require 'pry-byebug'
require "csv"
require_relative '../models/employee'

class EmployeeRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @employees = []
    self.load_csv if File.exist?(@csv_file_path)
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:username] = row[:username]
      row[:password] = row[:password]
      row[:role] = row[:role]
      @employees << Employee.new(row)
    end
  end

  def all_delivery_guys
    @employees.select { |employee| employee.delivery_guy?}
  end

  def find(id)
    @employees.find { |employee| employee.id == id}
  end

  def find_by_username(username)
    @employees.find { |employee| !employee.nil? && employee.username == username}
  end
end
