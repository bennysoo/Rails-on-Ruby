class Question_02
  
  # Declare the highest price and lowest price
  highPrice=0
  lowPrice=0
  
  # Ask the user to input the number of prices to be handled
  print "Please input the number of prices for calculation:"
  number=gets
  
  # Declare an array based on the user input for the data
  ary = Array.new(number.to_i)
  print "\n"
  
  
  # Compare the prices while user inputting the data  
  i=0 
  while i < (number.to_i)
  
   print "Please input a price to number "+i.to_s+" space in the array:"
   ary[i]=gets.to_f
   
   
   
   if i>0 and ary[i]>ary[i-1] 
     highPrice=ary[i]
   end
       
   if i>0 and ary[i]<ary[i-1]   
     lowPrice=ary[i] 
   end
   
   i=i+1    
    
  end
  
  
  #Set this if to handle if all prices in the array have the same value
  if highPrice==0 and lowPrice==0
    highPrice=lowPrice=ary[0]
    
  end
  
  

  print "\n\n"
  
  print "The prices you inputed: "
  print  ary
  print "\n"
  
  print "The lowest price(price to buy) is "+ lowPrice.to_s + "\n"
  print "The highest price(price to sell) is "+ highPrice.to_s + "\n"
  
  
  ## Following is the easiest solution for this question on Ruby but I used another way make this program more like an "algorithm"
  
  #print "The lowest price(price to buy) is "+ ary.min.to_s + "\n"
  #print "The highest price(price to sell) is "+ ary.max.to_s + "\n"
  #print "The best profit you can make is "+ (ary.max-ary.min).to_s
  
  
end