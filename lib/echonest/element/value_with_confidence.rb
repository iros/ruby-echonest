class ValueWithConfidence
  attr_reader :value, :confidence

  def initialize(value, confidence)
    @value = value
    @confidence = confidence
    
    @props = Hash.new
    @props["value"] = @value
    @props["confidence"] = @confidence
  end
  
  def to_json
    @props.to_json
  end
end


