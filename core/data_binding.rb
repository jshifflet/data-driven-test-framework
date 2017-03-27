class DataBinding
  
  def initialize(data_properties)
    @public_binding_method_name = data_properties['binding_method_name']
    @klass = data_properties['class']
    @bound_method = data_properties['bound_method']
    @data_source = data_properties['data']
    @pre_condition = data_properties['pre_condition']
    @post_condition = data_properrties['post_condition']
  end
  
  
end