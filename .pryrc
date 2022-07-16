require 'rubygems'

Pry.color = true
Pry.editor = 'vim'

Pry.config.history_file = "~/.irb_history"
Pry.config.prompt = Pry::Prompt[:rails] if Pry::Prompt[:rails]

require 'amazing_print'
AmazingPrint.pry!

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

def reset_pry!
  exec $0
end

def quick(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bmbm {|b| b.report { repetitions.times(&block) }}
  nil
end
