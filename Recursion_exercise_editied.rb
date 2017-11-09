
def range(start, last)
  return [] if last == start
  [start] + range(start + 1, last)
end

range(1, 5)

def range(start, last)
  result = []
  i = start

  while last > i
    result << i
    i += 1
  end

  result
end

def exp(b, n)
  return 1 if n == 0
  b * exp(b, n - 1)
end

def exp2(b, n)
  return 1 if n == 0
  return b if n == 1

  if n.even?
    exp(b, n / 2) ** 2
  else
    b * (exp(b, (n - 1) / 2) ** 2)
  end
end



def fibonacci_recursive(num) #4
  return [0, 1].take(num) if num <= 2

  previous_numbers = fibonacci_recursive(num - 1) #[0, 1]
  first_to_last = previous_numbers[-1] #1
  second_to_last = previous_numbers[-2] #0

  previous_numbers << first_to_last + second_to_last
end

def fibonacci_iterative(num)
  result = [0, 1]
  return result.take(num) if num <= 2

  i = num
    while i > 2
      result << result[-2] + result[-1]
      i -= 1
    end

  result
end

def subsets(arr) # arr => [1, 2]
  return [[]] if arr.length == 0
  # result = [[]]

  subs = subsets(arr[0...-1]) # subsets of [1] []

  new_subs = subs.map { |sub| sub + [arr.last] }
  # debugger
  subs + new_subs




def permutations

end
