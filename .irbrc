require 'rubygems'

require 'ap'
require 'pp'
require 'wirble'
require 'duration'
require 'irb/completion'
require 'irb/ext/save-history'

IRB_START_TIME = Time.now

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

def quick(repetitions=100, &block)
  require 'benchmark'

  Benchmark.bmbm { |b| b.report { repetitions.times(&block) } }

  nil
end

def reset_irb
  exec $0
end

Kernel.at_exit do
  puts Duration.new(Time.now - IRB_START_TIME)
end

Wirble.init
Wirble.colorize

puts IRB_START_TIME
