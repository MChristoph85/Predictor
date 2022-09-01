banner = File.read('/home/mark/Documents/Predictor/Predictor.txt')
$loop_count = 0

map = "
      ___________________________
     |      |      |      |      |
     |  01  |  02  |  03  |  04  |
     |______|______|______|______|
     |      |      |      |      |
     |  05  |  06  |  07  |  08  |
     |______|______|______|______|
     |      |      |      |      |
     |  09  |  10  |  11  |  12  |
     |______|______|______|______|
     |      |      |      |      |
     |  13  |  14  |  15  |  16  |
     |______|______|______|______|

"


############COLUMNS##@#########
column_1 = '01','05','09','13'
column_2 = '02','06','10','14'
column_3 = '03','07','11','15'
column_4 = '04','08','12','16'



#This is where the program starts
# puts row_column

puts banner
puts ''
puts '    Hello, lets play a little game'
puts ''
puts '           the rules are...'
puts '  you can only select a number once..'
puts 'you can only select from a column ONCE!'
puts 'andyou also can only select from a row ONCE!'
puts ''
puts 'what are you waiting for?... lets play!!!'
puts ''
puts 'Pick a number... from 1 to 16  (Press Enter Twice to Exit Program)'


   puts''
   puts map
   puts''
   
map_possibilities = [
   "
    ___________________________
   |      |      |      |      |
   |  01* |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   
   ",
   
    "
    ___________________________
   |      |      |      |      |
   |  01  |  02* |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   
   " ,
   
    "
    ___________________________
   |      |      |      |      |
   |  01  |  02  |  03* |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
    ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04* |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
    ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05* |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
    ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06* |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
    ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07* |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
   "
    ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08* |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09* |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   ",
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10* |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11* |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12* |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13* |  14  |  15  |  16  |
   |______|______|______|______|
   " ,
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14* |  15  |  16  |
   |______|______|______|______|
   ",
   
   "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15* |  16  |
   |______|______|______|______|
   ",
   
    "
   ___________________________
   |      |      |      |      |
   |  01  |  02  |  03  |  04  |
   |______|______|______|______|
   |      |      |      |      |
   |  05  |  06  |  07  |  08  |
   |______|______|______|______|
   |      |      |      |      |
   |  09  |  10  |  11  |  12  |
   |______|______|______|______|
   |      |      |      |      |
   |  13  |  14  |  15  |  16* |
   |______|______|______|______|
   "
   ]
   #########METHODS################### 
   
   
   def selected_choice(map ,option)
     if map.include? option.to_s
       choice = map.sub!(option.to_s + ' ', option.to_s + '*')
       puts choice
    $loop_count += 1
    end
    end



 def my_selection(choice)
 #############ROWS############
  row_1 = [1, 2, 3, 4]
  row_2 = [5, 6, 7, 8]
  row_3 = [9, 10, 11, 12]
  row_4 = [13, 14, 15, 16]
  right_row = []
 
  if    row_1.include? (choice)
  right_row = row_1
  #puts "this is the right_row variable:====>     " +right_row
  elsif row_2.include? (choice)
   right_row = row_2
    #puts "this is the right_row variable:====>  " + right_row
  elsif row_3.include? (choice)
   right_row = row_3
    #puts "this is the right_row variable:====>  " + right_row
   elsif row_4.include? (choice)
    right_row = row_4
    #puts "this is the right_row variable:====>  " + right_row
  end
  puts "you may no longer use these options: ==> " + right_row.to_s
  end 


########First number requst####################
puts 'enter your first number here: '
loop do
    break if $loop_count > 0
    $guess = gets.chomp.to_i

    break if $guess == 0 
    if $guess < 0 || $guess > 16
      puts 'try again with a number in the right range!'
    end 
  
    case $guess
    	when 1..16 
        selected_choice(map, $guess)
        my_selection($guess)
    	else
        puts 'You can\'t fool me, pick a valid number!'
    end


     ########second number requst###################
    puts 'Please select another number not in the same column or row: '
  loop do
      break if $loop_count > 1
        $guess_2 = gets.chomp.to_i


      if $guess_2 < 0 || $guess_2 > 16
        puts 'try again with a number in the right range!'
      end 

        case $guess_2
          when 1..16
            selected_choice(map, $guess_2)
            my_selection($guess_2)
            else
            puts 'You can\'t fool me, pick a valid number!'
        end
        
    
     ########Third number requst####################
      puts 'Please select another number not in the same column or row: '
    loop do
        break if $loop_count > 2
          $guess_3 = gets.chomp.to_i


         if $guess_3 < 0 || $guess_3 > 16
           puts 'try again with a number in the right range!'
         end 


        case $guess_3
          when 1..16
            selected_choice(map, $guess_3)
            my_selection($guess_3)
            else
            puts 'You can\'t fool me, pick a valid number!'
        end
        
     
        ########Fourth number requst##################
        puts 'Please select another number not in the same column or row: '
      loop do
           break if $loop_count > 3
           $guess_4 = gets.chomp.to_i


            if $guess_4 < 0 || $guess_4 > 16
           puts 'try again with a number in the right range!'
            end 


           case $guess_4
             when 1..16
              selected_choice(map, $guess_4)
              my_selection($guess_4)
               puts 'I predict that your total will be 34!!'
               else
              puts 'You can\'t fool me, pick a valid number!'
             end
      end # loop 4 end
    end  #loop 3 end
  end # loop 2 end
end #loop 1 end
   

            #puts "you selected #{$guess}, #{$guess_2} , #{$guess_3}, and #{$guess_4}!"
            puts 'Press enter to see the sum of your chosen numbers'
            enter = gets.to_i
  
 answer = "
      Your answer
          is
      ____  _  _
     |___  \| || |
       __) | || |_
      |__ <|__   _|
      ___) |  | |
     |____/   |_|
"
count = 0
count += $guess.to_i + $guess_2.to_i + $guess_3.to_i + $guess_4.to_i
if count == 34 && enter == 0
#puts '          ' + count.to_s
puts answer
puts ''
puts ''
puts "Was I right? Let's play again!"
puts ''
puts ''
end