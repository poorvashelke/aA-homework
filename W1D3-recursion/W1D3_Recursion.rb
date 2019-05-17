require 'byebug'

def range(start, last)
  #base case
  return [] if last <= start

  [start] + range(start+ 1, last)
end

def exp_1(base, power)
  return 1 if power == 0
  base * exp_1(base, power - 1)
end
 
def exp_2(base, power)
  puts " base: #{base} | power: #{power}"
  return 1 if power == 0
  return base if power == 1
  
  if power.even?
    exp_2(base, power / 2) ** 2
  else
    base * (exp_2(base, (power - 1) / 2) ** 2)
  end
end

def deep_dup(a)
  # return [a] if a.length <=1 && !a.is_a?(Array)
  
  # if a[0].is_a?(Array)
  #   a[0] + deep_dup[a[0][1..-1]]
  # else
  #   a[0] 
  # end
  #newarray = []
  a.map do |el|
    if el.is_a?(Array)
      deep_dup(el)
      #newarray << deep_dup(el)
    else
      el
      #newarray << el
    end
  end
  # a.map {|el| el.is_a?(Array) ? deep_dup(el) : el }
  #newarray
end

# x = ['a',['b',['c']]]
# y = deep_dup(x)
# p x.object_id == y.object_id
# p x[0].object_id == y[0].object_id
# p x[1].object_id == y[1].object_id
# p x[1][1].object_id == y[1][1].object_id

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

def binary_search(array, target)
  binary_helper(array, target, 0, array.length)
end

def binary_helper(array, target, low, high)
  return nil if array.empty?
  
  mid = (low + high) / 2
  return mid if array[mid] == target
   
  if array[mid] < target
    binary_helper(array, target, mid + 1, high)
  else
    binary_helper(array, target, low, mid - 1)
  end
end

def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left = merge_sort(array[0..mid-1])
  right = merge_sort(array[mid..-1])
  merge_helper(left, right)
end

def merge_helper(left, right)
  merged = []
  i = 0
  j = 0
  # while i < left.length && j < right.length
  while !left.empty? && !right.empty?
    if left.first <= right.first
      merged << left.shift
    else
      merged << right.shift
    end 
    
  end
  merged + left + right
end

#p merge_sort([3,4,1,6,2])
#  p merge_helper([1,3],[2,4,8])

def subsets(array)
  return [[]] if array.length == 0
  last = array.pop
  prev_subs = subsets(array)
  prev_subs + prev_subs.map {|el| el + [last]}
end

p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
p subsets([1, 2, 3])
