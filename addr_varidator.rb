module AddrVaridator
  def valid(email)
    local, domain = split(email)
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

  module_function :valid, :split, :include_ng_char?, :include_zenkaku?
end
