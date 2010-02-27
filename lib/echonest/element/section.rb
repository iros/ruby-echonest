class Section
  attr_reader :start, :duration

  def initialize(start, duration)
    @start = start
    @duration = duration
  end
  
  def to_json
    @props = Hash.new
    @props["start"] = @start
    @props["duration"] = @duration
    @props.to_json
  end
end
