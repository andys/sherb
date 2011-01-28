require 'erb'

class Sherb < ERB
  attr_accessor :sourcename

  def self.new_with_source(template, sourcename)
    erb = self.new(template)
    erb.sourcename = sourcename
    erb
  end

  def rendered_script
    rendered_script = result
  rescue Exception => e
    if self.sourcename
      e.backtrace.each_with_index do |stack_line, line_number|
        e.backtrace[line_number].gsub!(/^\(erb\):/, "#{sourcename}:")
      end
    end
    raise
  end
  
  def execute!
    IO.popen('/bin/bash', 'w') {|io| io.puts rendered_script }
  end
end
