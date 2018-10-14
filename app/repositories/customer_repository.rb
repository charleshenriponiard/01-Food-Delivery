require 'pry-byebug'
require 'csv'
require_relative '../models/customer'

class CustomerRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @customers = []
    load_csv if File.exist?(@csv_file_path)
    @next_id = @customers.any? ? @customers.last.id + 1 : 1
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:name] = row[:name]
      row[:address] = row[:address]
      @customers << Customer.new(row)
    end
  end

  def save_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    CSV.open(@csv_file_path, 'w', csv_options) do |csv|
      csv << ['id', 'name', 'address']
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address ]
      end
    end
  end

  def all
    @customers
  end

  def add(customer)
    customer.id = @next_id
    @next_id += 1
    @customers << customer
    save_csv
  end

  def find(id)
    @customers.find{ |customer| customer.id == id}

  end

end
