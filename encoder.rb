#coding: utf-8

require 'digest'

puts "Введите слово или фразу для шифрования:"
frase = STDIN.gets

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
encoder = STDIN.gets.to_i

if encoder == 1
  md5 = Digest::MD5.new
  md5 << frase
  puts "Вот что получилось:"
  puts md5.hexdigest
elsif encoder == 2
  sha1 = Digest::SHA1.new
  puts "Вот что получилось:"
  puts sha1.digest 'frase'
elsif encoder == 3
  sha2 = Digest::SHA2.new
  puts "Вот что получилось:"
  puts sha2.digest 'frase'
else
  puts "Вы ошиблись!"
end


