
class Rand

def random 
 $a=0
 $a=$a.to_i
 $b=0
 $b=$b.to_i
 $v=0
 $v=$v.to_i
 $g=0
 $g=$g.to_i

end
end

class Move

def hod  #Метод, в котором мы осуществляем сам ход
 $b1=0
 $b1=$b1.to_i
 $b2=0
 $b2=$b2.to_i
 $b3=0
 $b3=$b3.to_i
 $b4=0
 $b4=$b4.to_i
end

 def chek
 $byk=0
 $byk=$byk.to_i
 $kor=0
 $kor=$kor.to_i
 end
end

def nachalo #Метод, который показывает наш ход
 puts ""
 puts $b1
 puts $b2
 puts $b3
 puts $b4
 puts ""
 end
 
 
 def Move.hod
 puts "Введите первую цифру"
 $b1=gets
 while $b1=="" do
 puts "Введите цифру!"
     $b1=gets
    $b1=$b1.to_i
    end
 $b1=$b1.to_i
  while $b1<0 or $b1>9 do
   puts "Некорректно введена цифра!"
    puts "Введите первую цифру"
    $b1=gets
    $b1=@b1.to_i
   end
   
 puts "Введите вторую цифру"
 $b2=gets
 $b2=$b2.to_i
   while $b2<0 or $b2>9 do
     puts "Некорректно введена цифра!"
    puts "Введите вторую цифру"
    $b2=gets
    $b2=$b2.to_i
   end
   
 puts "Введите третью цифру"
 $b3=gets
 $b3=$b3.to_i
     while $b3<0 or $b3>9 do
     puts "Некорректно введена цифра!"
    puts "Введите третью цифру"
    $b3=gets
    $b3=$b3.to_i
   end
  
 puts "Введите четвёртую цифру"
 $b4=gets
 $b4=$b4.to_i
     while $b4<0 or $b4>9 do
     puts "Некорректно введена цифра!"
    puts "Введите четвёртую цифру"
    $b4=gets
    $b4=@b2.to_i
   end

 puts "---------------------------------------------------------"
 end


def Move.chek #Метод проверки ошибки введёных цифр и победы
 if $b1==$b2 or $b1==$b3 or $b1==$b4 or $b2==$b3 or $b2==$b4 or $b3==$b4
  puts "Цифры не могу быть одинаковыми!"
 return
 end
 
 $byk=$byk.to_i
 $kor=$kor.to_i
 
 if $b1==$a
  $byk=$byk+1
 end
 
 if $b2==$b
  $byk=$byk+1
 end

 if $b3==$v
  $byk=$byk+1
 end
  
 if $b4==$g
  $byk=$byk+1
 end
 
  if $b1==$b
   $kor=$kor+1
  elsif $b1==$v
   $kor=$kor+1
  elsif $b1==$g
   $kor=$kor+1 
  end
 
  if $b2==$a
   $kor=$kor+1
  elsif $b2==$v
   $kor=$kor+1
  elsif $b2==$g
   $kor=$kor+1 
  end
 
  if $b3==$b
   $kor=$kor+1
  elsif $b3==$a
   $kor=$kor+1
  elsif $b3==$g
   $kor=$kor+1 
  end
  
  if $b4==$b
   $kor=$kor+1
  elsif $b4==$v
   $kor=$kor+1
  elsif $b4==$a
   $kor=$kor+1 
 end
  
 puts ""
 puts "Коров" 
 puts $kor
 puts "Быков"
 puts $byk
 puts ""
 
 if $byk==4 
 puts "Поздравляю! Вы выиграли!"
 end

end

@nomer=1 #Переменная, считающая наши шаги
puts "Добро пожаловать в игру 'Быки и Коровы'!"
puts "Ваша задача - отгадать 4-хзначое число, загаданное компьютером. Если вы угадали цифру, но не угадали её положение в числе - у вас 1 корова. Ели вы угадали и цифру, и её положение - у вас 1 бык."
puts "(Цифры не могут повторяться, а также, первая цифра не может быть равна нулю!)"
puts ""
puts "X"
puts "X"
puts "X"
puts "X"
puts ""

def Rand.random
 $a=rand(10)
 $b=rand(10)
 $v=rand(10)
 $g=rand(10)
 
 until $a!=$b && $a!=$v && $a!=$g && $b!=$v && $b!=$g && $v!=$g && $a>0  do #Проверка, чтобы цифры не повторялись, и чтобы первые чило не было нулём
 $a=rand(10)
 $b=rand(10)
 $v=rand(10)
 $g=rand(10)
 end
end

Rand.random

while $byk!=4 do
 puts "Номер хода: #{@nomer}"
 Move.hod
 nachalo
 Move.chek
 @nomer=@nomer+1
end
input()
