## Kode program ruby untuk menghitung rata-rata dari beberapa bilangan kemudian lakukan pengukuran dengan menghitung waktu yang dilakukan untuk melakukan perhitungan rata-rata tersebut. Waktu yang disarankan menggunakan satuan mikrosecond atau milisecond. 

```ruby
require 'benchmark'

puts "Masukkan ukuran array: "
size = gets.chomp.to_i
puts "Masukkan angka yang dicari: "
target = gets.chomp.to_i

arr = (0...size).to_a
time = Benchmark.realtime { arr.index(target) }

if arr.include?(target)
  puts "Angka ditemukan pada index: #{arr.index(target)}"
else
  puts "Target tidak ditemukan dalam array."
end

puts "Waktu Eksekusi: #{(time * 1000).round(3)} milliseconds"

```
