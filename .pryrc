require 'rubygems'
require 'pp'

Pry.editor = 'vim'

begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai(:indent => 2) }
rescue LoadError
end

class Object
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  def ri(method = nil)
    unless method && method =~ /^[A-Z]/
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

def quick(repetitions=100, &block)
  require 'benchmark'
  Benchmark.bmbm { |b| b.report { repetitions.times(&block) } }
  nil
end

class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end
