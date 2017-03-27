class Parser
  def initialize(test_data)
    @test_data = tesst_data
    initialzie_data
    initialize_method_data_bindings
    initialize_methods
    create_method_data_binindings
  end
  
  def self.initialize_data
    @data = @test_data['data']
    @data_parsers = {}
    @data.keys.each do |key|
      @data_parsers[key] = DataParser.new(@data[key])
    end
  end
  
  def self.initialize_method_data_bindings
    @method_data_binding_parsers = {}
    @test_data['method_data_bindings'].each do |method_data_binding|
      @method_data_binding_parsers[method_data_binding['binding_method_name']]  BindingParser.new(method_data_binding)
    end
  end
  
  def self.initialize_methods
    @method_parsers = {}
    @test_data['methods'].each do |method|
      @method_parsers[method['method']] << MethodParser.new(method)
    end
  end
  
  def self.create_method_data_bindings
     
  end
  
  def namen
    @test_data['name']
  end
  
  def title
    @test_data['title']
  end
  
  def before_all
    @test_data['before_all']
  end
  
  def after_all
    @test_data['after_all']
  end
  
  def runner_object 
    @test_data['runner_object']
  end
  
  def test_method
    @test_data['test_method']
  end
  
  def pre_condition
    @test_data['pre_condition']
  end
  
  def post_condition
    @test_data['post_condition']
  end
  
  def method_binding_data_bindings
    
  end
  
  def methods
  end
  
  def data
  end
end