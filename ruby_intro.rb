# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length==0
  	sum = 0
  else
  	arr.each{|i| sum=sum+i}
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length==0
  	sum = 0
  elsif arr.length==1
  	sum = arr[0]
  else
  	arr.sort!
  	arr.reverse!
  	sum = arr[0]+arr[1]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0
  j = 0
  sum = 0
  if arr.length==0 && n==0
  	return true
  elsif arr.length==1 && n==arr[0]
  	return true
  end
  for i in 0..(arr.length-1)
  	for j in (i+1)..(arr.length-1)
  		sum = arr[i] + arr[j]
  		if sum==n
  			return true
  		end
  	end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[bcdfghjklmnpqrstvwxyz]/i.match s
  	return true
  else
  	return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^0b[01]+/.match s
  	if Integer(s)%4==0
  		return true
  	else
  		return false
  	end
  else
  	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn,price)
		begin
			if isbn.empty? || price <= 0
				raise ArgumentError, "The ISBN number is the empty string or the price is less than or equal to zero."
			end
		rescue Exception => e
			puts e.message  
  			puts e.backtrace.inspect
  		end
  		@isbn = isbn
  		@price = price
  	end
  	
  	def set_isbn isbn
    	@isbn=isbn
  	end
  	
  	def get_isbn 
    	puts "ISBN: #{@isbn}"
  	end
  	
  	def set_price price
    	@price=price
  	end
  	
  	def get_price
    	puts "The price is: #{@price}"
  	end
  	
  	def price_as_string
    	s=String.new("$")
    	s<<format("%.2f",@price).to_s
    end
end

