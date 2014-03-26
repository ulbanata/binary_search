require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    if array.length == 0
      return false
    end
    self._bsearch(array, element, 0, array.length-1)
  end

  def self._bsearch(array, element, start_index, end_index)
    return element == array[start_index] if start_index == end_index

    middle_index = start_index + (end_index - start_index) / 2
    if element == array[middle_index]
      return true
    elsif element > array[middle_index]
      return self._bsearch(array, element, middle_index+1, end_index)
    else
      return self._bsearch(array, element, start_index, middle_index)
    end

  end
end
