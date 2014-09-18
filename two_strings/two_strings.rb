class TwoString

  def same_string string1, string2
    raise ArgumentError unless ((string1.is_a? String) && (string2.is_a? String))
    result = string1 == string2 ? true : false
    result.to_s
  end
end
