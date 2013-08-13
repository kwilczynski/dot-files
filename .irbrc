require 'rubygems'

require 'ap'
require 'pp'
require 'wirble'
require 'irb/completion'
require 'irb/ext/save-history'

ARGV.concat [ '--readline' ]
 
IRB.conf[:SAVE_HISTORY] = 20480
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_N => "(%m):%03n:%i> ",
  :PROMPT_S => "(%m):%03n:%i:%l> ",
  :PROMPT_C => "(%m):%03n:%i?> ",
  :RETURN   => "=> %s\n",
  :PROMPT_I => "(%m):%03n:%i> "
}

IRB.conf[:PROMPT_MODE] = :CUSTOM

IRB::Irb.class_eval do
  def output_value
    ap @context.last_value
  end
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

def reset_irb
  exec $0
end

Wirble.init
Wirble.colorize
