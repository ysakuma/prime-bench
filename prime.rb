#!/usr/bin/ruby
def prime?(num)
  if num < 2
    return false
  elsif num == 2
    return true
  elsif (num % 2 == 0)
     return false;
  end
  
  i=3;
  while (i * i <= num) do
    return false if num % i == 0
    i+=2;
  end
  return true
end 

start_time = Time.now
2000001.times.inject(0) {|sum, i| sum + i if prime?(i) }
total_time = Time.now - start_time
p sum,total_time
