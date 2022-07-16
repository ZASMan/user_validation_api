class BaseValidator
  attr_accessor :errors, :validations
  
  def initialize(attributes)
    @errors = {}
    @validations = validations
  end

  def valid?
    errors.blank?
  end

  def invalid?
    errors.present?
  end

  def validations
  end

  def validate
    validations.each do |validation_method|
      self.send(:validation_method)
    end
  end
end
