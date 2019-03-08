path = ''
wd = ''
while File.exists?(path) == false
	print "\e[31m"
	puts '/////  ///   //    ////////////////  ///////// ///////'
	puts '//           //         /////        //        //    //'	
        puts '//     ///   //          ///         //        //   //'
	puts '/////  ///   //          ///         //////    /////'
	puts '//     ///   //          ///         //        //  //'
	puts '//     ///   ///         ///         //        //  //'
	puts '//     ///   /////////   ///         ////////  //   ///  8' 
	print "\e[0m \e[36m"
	print 'Enter the file.txt with the words : '
	
	path = gets.chomp.to_s
	if File.exists?(path)
		break
	end
	puts "\033[41;30m"'File not exist !'"\033[38;0m"
end
print 'Enter the name of your wordlist that will be made EX: wd.txt : '
wd = gets.chomp.to_s
file = File.open(path)
r = File.open(wd, 'a+')
read = r.readlines
puts "\e[32m"
file.each do |palavras|
	puts ''
	puts palavras
	if palavras.length >= 9
		if read.include?(palavras) == false
			r.write(palavras)
		end
	end
end
puts "\e[36m"
puts ''
puts 'Success !'
puts ''
