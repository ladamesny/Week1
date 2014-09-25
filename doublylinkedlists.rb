class DoublyLinkList

  attr_accessor :head, :tail, :data

  def initialize d
    @head = nil
    @tail = nil
    @data = d
  end

  def add element
    if self.tail == nil
      self.tail = element
      element.head = self
    else
      self.tail.add element
    end
  end

  def remove element

    if self.data != element.data
      self.tail.remove element
    else
      if self.head == nil
        self.tail.head = nil
        self.tail = nil
      else
        if self.tail != nil
          self.tail.head = self.head
          self.head.tail = self.tail
          self.tail = nil
          self.head = nil
        else
          self.head.tail = nil
          self.head = nil
        end 
      end
    end
  end

  def insert new_element
    self.head = new_element
    new_element.tail = self
  end

  def show
    if self.tail != nil
      puts "#{self.data}"
      self.tail.show
    else
      puts "#{self.data}"
    end
  end
end


first = DoublyLinkList.new("First")
second = DoublyLinkList.new("Second")
third = DoublyLinkList.new("Third")
fourth = DoublyLinkList.new("Fourth")


first.add second
puts "First iteration (after adding two items):"
puts first.show
first.add third
puts "Second iteration (after adding third item):"
puts first.show
first.remove(third)
puts "Third iteration (after removing third item):"
puts first.show
first.insert fourth
puts "Fourth iteration (after inserting fourth item):"
puts fourth.show
