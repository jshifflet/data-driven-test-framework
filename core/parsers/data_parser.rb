class DataParser
  attr_reader :data_object
  
  def initialize(data)
    @data = data
    initialize_data_by_type
  end
  
  def initialize_data_by_type
    type = @data['type']
    require_relative "#{type}_data_parser"
    @parser = Kernel.const_get("#{type.capitalize}DataParser").new(@data)
    @data_object = @parser.get_data_object
  end
end