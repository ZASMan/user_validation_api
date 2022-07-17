class BaseModel
  attr_accessor :class_validator
  def initialize(attributes)
    _klass = "#{self.class}Validator".constantize
    @class_validator = _klass.new(attributes)
    raise("Invalid instance of #{self.class}. Errors: #{@class_validator.errors.messages}") if @class_validator.invalid?
  end
end
