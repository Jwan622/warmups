gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_it_has_no_nodes
    assert_equal 0, list.count
  end

  def test_it_can_add_nodes
    list.push("hello")
    assert_equal 1, list.count
  end

  def test_it_can_add_two_nodes
    list.push("hello")
    list.push("world")
    list.push("testing")
    assert_equal 3, list.count
  end
end
