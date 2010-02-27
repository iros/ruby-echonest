class Loudness
  attr_reader :time, :value

  def initialize(time, value)
    @time = time
    @value = value
  end
  
  def to_json
    @props = Hash.new
    @props["time"] = @time
    @props["value"] = @value
    @props.to_json
  end
  
end
