module Calc
  def raw_area(r)
    (r ** 2) * 3 # Math::PI
  end

  module_function :raw_area
end

