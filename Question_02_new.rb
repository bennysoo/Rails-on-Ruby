class Question_02_new
  
  # Declare the highest price and lowest price
    highPrice=0
    lowPrice=0
    currentBestProfit=0
    
  # Ask the user to input the number of prices to be handled
    print "Please input the number of prices for calculation:"
    number=gets
    
  # Declare an array based on the user input for the data
    ary = Array.new(number.to_i)
    print "\n"
    
    
    
  # Calculate the best price to buy and sell while asking the user to input the prices
    i=0 
    while i < (number.to_i)
    
     print "Please input a price to number "+i.to_s+" space in the array:"
     ary[i]=gets.to_f
     
     if i==0
       highPrice=lowPrice=ary[0]
     end
     
     if i>0 and (ary[i-1]<lowPrice)
         lowPrice=ary[i-1]
         highPrice=ary[i]
     end
     
     if i>0 and (ary[i]-lowPrice)>0 and (ary[i]-lowPrice)>=currentBestProfit   
       highPrice=ary[i]
     end
     
     currentBestProfit=highPrice-lowPrice
   
     i=i+1
     
    end
    
  #Print the result
  if currentBestProfit > 0
  print "\n\n"
  
  print "The prices you inputed: "
  print  ary
  print "\n"
  
  print "The best price to buy in is "+ lowPrice.to_s + "\n"
  print "The best price to sell out is "+ highPrice.to_s + "\n"
  print "The maximum profit is "+currentBestProfit.to_s
  
  end
  
  
  #Handle the circumstance of prices keep falling as time goes by
  if currentBestProfit<=0
    print "\n\n"
    print "These is no best price to buy nor to sell. Because the prices keep falling as time goes by!" 
  end
  
  
end