require 'digest'

puts "Введите слово или фразу для шифрования:"
users_words = STDIN.gets.strip

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
users_shifr = STDIN.gets.to_i

if users_shifr == 1
  md5 = Digest::MD5.new
  md5.update 'users_words'
  puts "Вот что получилось:"
  puts md5
elsif users_shifr == 2
  sha1 = Digest::SHA1.new
  sha1.digest 'users_words'
  puts "Вот что получилось:"
  puts sha1
elsif users_shifr == 3
  sha2 = Digest::SHA2.new
  sha2.digest 'users_words'
  puts "Вот что получилось:"
  puts sha2
end

