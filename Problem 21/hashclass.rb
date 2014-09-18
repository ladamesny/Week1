class MyHash

  attr_accessor :keys, :values

  def initialize
    @keys = []
    @values = []
  end

  def add_record k, v
    @keys << k
    @values << v
  end

  def value key
    shared_index = @keys.rindex(key)
    @values[shared_index]
  end

  def key value
    if @values.rindex(value) == nil
      return nil
    else
      shared_index = @values.rindex(value)
      @keys[shared_index]
    end

  end

  def has_key?(key)
    if @keys.rindex(key)
      true
    else
      false
    end
  end

  def has_value?(value)
    if @values.rindex(value)
      true
    else
      false
    end
  end

  def show_record key
    shared_index = @keys.rindex(key)
    "#{key} => #{@values[shared_index]}"
  end

  def each
    self.keys.each do |key|
      yield(key, self.value(key))
    end
  end

  # def assign_record (value)
  #   lambda do |key|
  #     self.add_record(key, value)
  #   end
  # end
  #
  # self.key("dummy_value") = assign_record(self.value("dummykey"))
  #
  # def each_with_index
  #   self.keys.each_with_index do |key, i|
  #     yield(key, self.values[i])
  #   end
  # end
end
#
# new_hash = MyHash.new("dummy_key", "dummy_value")
#
# # new_hash.add_record("new_key", "new_record")
#
# new_hash["new_keymethod"] = "new_recordmethod"
# puts new_hash.has_key?("new_key")
#
# puts "#{new_hash.value("dummy_key")}"
#
# puts "#{new_hash.key("new_record")}"
# # i = 1
# new_hash.each do |key, value|
#   puts "#{i}. Key: #{key} value: #{value}"
# end
