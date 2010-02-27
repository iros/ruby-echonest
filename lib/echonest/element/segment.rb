class Segment < Section
  attr_reader :loudness, :max_loudness, :pitches, :timbre

  def initialize(start, duration, loudness, max_loudness, pitches, timbre)
    super(start, duration)

    @loudness = loudness
    @max_loudness = max_loudness
    @pitches = pitches
    @timbre = timbre
    if (!defined? @props)
      @props = Hash.new
    end
    @props["timbre"] = @timbre
    @props["loudness"] = @loudness
    @props["max_loudness"] = @max_loudness
    @props["pitches"] = @pitches
  end
  
  def to_json
    @props.to_json
  end
end
