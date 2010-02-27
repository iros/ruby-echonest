class Beat < ValueWithConfidence
  def start
    value
    if (!defined? @props)
      @props = Hash.new
    end
    @props["start"] = start
  end
  
  def to_json
    @props.to_json
  end
  
end
