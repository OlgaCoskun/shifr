require 'digest'

puts "Введите слово или фразу для шифрования:"
user_fraza = STDIN.gets.strip

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
user_shifr = STDIN.gets.to_i

if user_shifr == 1
  md5 = Digest::MD5.new
  md5.update 'user_fraza'
  puts "Вот что получилось:"
  puts md5
else
  sha1 = Digest::SHA1.new
  sha1.digest 'user_fraza'
  puts "Вот что получилось:"
  puts sha1
end

