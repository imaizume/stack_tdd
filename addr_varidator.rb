module AddrVaridator
  def split(s)
    s.split("@", 2)
  end

  def check_local_part(str)
    str.match(/@|\\|\s|　/).nil?
  end
end
