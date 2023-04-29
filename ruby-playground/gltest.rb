module Gltest
  def self.describe(name, *, &block)
    klass = Class.new(Gltest::Spec)
    klass.name = name
    klass.class_eval(&block)
    klass
  end

  class Gltest::Spec
    def self.before(&block)
      define_method(:setup, &block)
    end 

    def self.after(&block)
      define_method(:teardown, &block)
    end 

    def self.it(desc, &block)
      @num_specs ||= 0
      @num_specs += 1
      define_method("test_#{@num_specs}_#{desc}", &block)
    end
  end 
end 

describe Class do 
  before do 
    puts "Before"
  end 

  after do 
    puts "After"
  end 

  it "should allow me to do something" do
    Class.new.must_be_kind_of Class
  end
end