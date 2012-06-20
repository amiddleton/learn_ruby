class BeastieBoys

  def album_list
    album_list = {
      "1988" => "Licensed to Ill",
      "1989" => "Check Your Head",
      "1994" => "Ill Communication",
      "1998" => "Hello Nasty",
      "2004" => "To the 5 Boroughs",
      "2007" => "The Mix-Up",
      "2011" => "Hot Sauce Committee Part Two",
    }
  end

  def to_array
    album_list.flatten
  end

  def show_year (input)
    album_list.has_key?(input)
  end

  def no_album
    a1 = album_list.keys.to_a.collect{|x| x.to_i}
    a2 = ((album_list.keys[0].to_i)..(Time.now.year)).to_a
    a2 - a1
  end
end

################################################################################

#Below is my original code with both a hash and an array.  I changed to a
#single hash and used flatten it to create an array.  However, I don't like
#the way it prints out and need to find a way to print both the year and album
#on one line.

#class BeastieBoys
 #def studio_albums
   #studio_albums = ['Licensed to Ill, 1984',
                     #'Paul\'s Boutique, 1989',
                     #'Check Your Head, 1992',
                     #'Ill Communication, 1994',
                     #'Hello Nasty, 1998',
                     #'To the 5 Boroughs, 2004',
                     #'The Mix-up, 2007',
                     #'Hot Sauce Committee Part Two, 2011']
 # end
 # def albums_year
   # albums_year = {
     #'1986' => 'Licensed to Ill',
     #'1989' => 'Paul\'s Boutique',
     #'1992' => 'Check Your Head',
      #'1994' => 'Ill Communication',
      #'1998' => 'Hello Nasty',
      #'2004' => 'To the 5 Boroughs',
      #'2007' => 'The Mix-up',
      #'2011' => 'Hot Sauce Committee Part Two'}
  #end
  #def years_album
    #years_album = %w(1984, 1989, 1992, 1994, 1998, 2004, 2007, 2011, )
  #end
  #def current_time
    #current_time = %w(1984...time.now.year)
  #end
  #def missing_years
    #missing_years = 'current_time' #- 'years_album'
  #end
#end
