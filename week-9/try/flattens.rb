def flattens(array)
  array_flat = []
  array.each {|item|
    if item.is_a?(Array)
      flattens(item).each { |subItem|
        array_flat << subItem
      }
    else
      array_flat << item
    end
  }
  return array_flat
end

print flattens([1,2,3])
puts
print flattens([[1,2],[3,4]])
puts
print flattens([[[1, [8, 9]], [3, 4]], 5])