class APIMethod < Method
  def initialize(data_properties)
    super(data_properties)
    @klass = data_properties['class']
    @public_method_name = data_properties['method']
    @uri_path = data_properties['uri_path']
    @http_method = data_properties['http_opertaion']
    @pre_condition = data_properties['pre_condition']
    @post_condition = data_properrties['post_condition']
  end
end