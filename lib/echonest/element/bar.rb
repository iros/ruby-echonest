class Bar < ValueWithConfidence
  def start
    value
  end
  
  def to_json
    if (!defined? @props)
      @props = Hash.new
    end
    @props["start"] = start
    @props.to_json
  end
  
end
