module AddrVaridator
  def split(s)
    s.split("@", 2)
  end

  def include_ng_char?(str)
    str.match(/@|\\|\s|"/).nil?
  end

  def include_zenkaku?(str)
    str.chars.all? { |c| c.ord < ( 2 << 6 ) }
  end
end
