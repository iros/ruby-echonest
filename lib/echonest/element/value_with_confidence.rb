class ValueWithConfidence
  attr_reader :value, :confidence

  def initialize(value, confidence)
    @value = value
    @confidence = confidence
  end
  
  def to_json
    @props = Hash.new
    @props["value"] = @value
    @props["confidence"] = @confidence
    @props.to_json
  end
end


