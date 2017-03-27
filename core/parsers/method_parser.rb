class MethodParser
  def initialize(method_creation_data)
    @method_creation_data = method_creation_data
    initialize_method_by_type
  end
  
  def initialize_method_by_type
     type = @method_creation_data['type']
     require_relative "#{type}_data_parser"
     @parser = Kernel.const_get("#{type.capitalize}MethodParser").new(@method_creation_data)
     @method_object = @parser.get_data_object
   end
end