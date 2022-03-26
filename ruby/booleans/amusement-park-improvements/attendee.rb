# frozen_string_literal: true

class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # rubocop:disable Naming/PredicateName
  def has_pass?
    !@pass_id.nil?
  end
  # rubocop:enable Naming/PredicateName

  def fits_ride?(_ride_minimum_height)
    @height - _ride_minimum_height >= 0
  end

  def allowed_to_ride?(_ride_minimum_height)
    fits_ride?(_ride_minimum_height) && has_pass?
  end
end
