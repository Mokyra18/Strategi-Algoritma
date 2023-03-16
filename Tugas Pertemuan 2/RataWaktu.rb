require 'benchmark'

# Fungsi untuk menghitung rata-rata dari beberapa bilangan
def hitung_rata_rata(bilangan)
  total = bilangan.reduce(:+)
  rata_rata = total.to_f / bilangan.length
  return rata_rata
end

# Meminta user untuk memasukkan jumlah bilangan yang akan dihitung rata-ratanya
print "Masukkan jumlah bilangan: "
jumlah_bilangan = gets.chomp.to_i

# Meminta user untuk memasukkan bilangan secara manual
bilangan = []
jumlah_bilangan.times do |i|
  print "Masukkan bilangan ke-#{i+1}: "
  bilangan << gets.chomp.to_i
end

# Hitung rata-rata dan ukur waktu yang diperlukan untuk perhitungan
waktu = Benchmark.measure do
  rata_rata = hitung_rata_rata(bilangan)
  puts "Rata-ratanya adalah #{rata_rata}"
end

puts "Waktu yang dibutuhkan: #{(waktu.real * 1000).round(2)} milisecond"
