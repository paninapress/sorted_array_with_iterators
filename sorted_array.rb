class SortedArray
  attr_reader :internal_arr

  def initialize arr=[]
    @internal_arr = []
    arr.each { |el| add el }
  end

  def add el
    # we are going to keep this array
    # sorted at all times. so this is ez
    lo = 0
    hi = @internal_arr.size
    # note that when the array just
    # starts out, it's zero size, so
    # we don't do anything in the while
    # otherwise this loop determines
    # the position in the array, *before*
    # which to insert our element
    while lo < hi
      # let's get the midpoint
      mid = (lo + hi) / 2
      if @internal_arr[mid] < el
        # if the middle element is less 
        # than the current element
        # let's increment the lo by one
        # from the current midway point
        lo = mid + 1
      else
        # otherwise the hi *is* the midway 
        # point, we'll take the left side next
        hi = mid 
      end
    end

    # insert at the lo position
    @internal_arr.insert(lo, el)
  end

  def each &block
    #loop over all elements in @internal_arr
    # yield to each element

    i = 0 #track the index
    while i < @internal_arr.size
      yield @internal_arr[i]
      i += 1  
    end
    @internal_arr
    #raise NotImplementedError.new("You need to implement the each method!")
  end

  def map &block
    # map should return a new array
    # so, make one
    new_arr = []

    # fill new array with elements
    # that are the results of invoking
    # the block passed into map
    # on each successive element of the internal array
    self.each { |x| new_arr << yield(x) }
    # use each somehow... 
    # invoke the block on the element currently being looked at with each
    # push the result of the invokation onto new_arr

    
    # return our new array
    return new_arr
    #raise NotImplementedError.new("You need to implement the map method!")

  end

  def map! &block
    
    #raise NotImplementedError.new("You need to implement the map! method!")
  end

  def find value
    # until i == value
    # self.each {|x| x.map { |y| y = i
    #   } }
    # end
    #   return i

    # until i == value
    #   self.each {|x| }
    # #raise NotImplementedError.new("You need to implement the find method!")
  end
  def inject acc=nil, &block
    raise NotImplementedError.new("You need to implement the inject method!")
  end
end