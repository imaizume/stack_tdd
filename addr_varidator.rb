module AddrVaridator
  def valid(email)
    local, domain = split(email)
    return false if local.nil?
    include_ng_char?(local) && include_zenkaku?(local) && domain == 'example.com'
  end

  def split(s)
    s.split("@", 2)
  end

  def include_ng_char?(str)
    return false if str.match(Regexp.union(/^\./, /\.$/, /\.\.+/))
    str.match(Regexp.union(/\(/, /\)/, /</, />/, /\[/, /\]/, /:/, /;/, /@/, /\\/, /,/, /"/, /\s/)).nil?
  end

  def include_zenkaku?(str)
    str.chars.all? { |c| c.ord < ( 2 << 6 ) }
  end

  def quoted_pair?(str)
    return false unless str.size == 2
    str[0].ord == 92 && [9, 20, (33..126).to_a].flatten.include?(str[1].ord)
  end

  module_function :valid, :split, :include_ng_char?, :include_zenkaku?, :quoted_pair?
end
