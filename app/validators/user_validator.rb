require_relative 'base_validator'

class UserValidator < BaseValidator
  def validations
    %i[validate_name validate_email]
  end

  private

  def validate_name
    first_name.present? && last_name.present?
  end

  def validate_email
    email.present?
  end
end
