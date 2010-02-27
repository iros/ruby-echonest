class Section
  attr_reader :start, :duration

  def initialize(start, duration)
    @start = start
    @duration = duration
    @props = Hash.new
    @props["start"] = @start
    @props["duration"] = @duration
  end
  
  def to_json
    @props.to_json
  end
end
