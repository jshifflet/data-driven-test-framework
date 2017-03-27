class Test
  def initialize(test_data)
    @test_data = test_data
    @main_parser = initialize_parser(test_data['parser'])
    @name = @main_parser.name
    @title = @main_parser.title
    @before_all = @main_parser.before_all
    @after_all = @main_parser.after_all
    @runner_object = @main_parser.runner_object
    @test_method = @main_parser.test_method
    @pre_condition = @main_parser.pre_condition
    @post_condition = @main_parser.post_condition
  end
  
  def self.initialize_parser(klass_path)
    require_path = klass_path.gsub('.', '/')
    require_relative require_path
    Kernel.const_get(klass_path.split('.')[-1])
  end
end