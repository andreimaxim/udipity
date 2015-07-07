class Udipity::Command::Hello < Udipity::Command

  CMD = 'hello'
  
  protected

  def cmd
    CMD
  end

  def run_hooks
    @needs_ack = true
    storage.add client
  end
end