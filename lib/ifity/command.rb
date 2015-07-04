class Ifity::Command

  CMD = 'command'
  
  attr_reader :client
  attr_reader :data

  def initialize client, data = nil
    @client = client
    @data = data
  end

  def ack
    "ack #{cmd} #{client.id}" if needs_ack?
  end

  def syn
    "#{client.id} #{cmd}"
  end

  def needs_ack?
    @needs_ack
  end

  def run
    run_hooks
  end

  protected

  def cmd
    CMD
  end

  def storage
    Ifity::Storage.instance
  end

  def run_hooks
    @needs_ack = true
  end
end
