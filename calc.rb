module Calc
  def raw_area(r)
    round( (r ** 2) * Math::PI )
  end

  def round(v)
    v.round
  end

  module_function :raw_area, :round
end

