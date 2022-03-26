# frozen_string_literal: true

class LogLineParser
  def initialize(line)
    @line = line
  end

  def split_message
    @line.strip.split(/\[(INFO|WARNING|ERROR)\]:\s*/).slice(1, 2)
  end

  def message
    split_message[1]
  end

  def log_level
    split_message[0].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
