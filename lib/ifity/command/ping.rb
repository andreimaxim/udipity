class Ifity::Command::Ping < Ifity::Command
  
  CMD = 'ping'

  protected

  def cmd
    CMD
  end

  def run_hooks
    @needs_ack = client_available?
    storage.ping client
  end

  def client_available?
    storage.check client
  end
end
