module Calc
  def raw_area(r)
    (r ** 2) * 3 # Math::PI
  end

  def round(v)
    v.round
  end

  module_function :raw_area, :round
end

