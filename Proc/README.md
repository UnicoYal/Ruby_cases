Сам блок — это объект, как и всё остальное в языке. Его можно как создать независимо от функции, так и использовать. За блоки в Ruby отвечает класс Proc:<br>

square = Proc.new { |x| x**2 }<br>
Альтернативный синтаксис — proc { |x| x**2 }<br>
square.call(4) # 16<br>

С объектом-блоком можно делать всё то же самое, что и с другими объектами. В этом смысле он ведет себя как анонимная функция в любом языке. Однако, если мы захотим этот объект использовать как блок при передаче в функцию, то ничего не получится:<br>

[1, 2].map square<br>
ArgumentError (wrong number of arguments (given 1, expected 0))<br>

Хотя мы и имеем дело с блоком, всё же в примере выше он передается в функцию как обычный объект первым параметром. Но метод map() не принимает на вход ничего, кроме блока, поэтому код завершается с ошибкой. Блок, созданный как объект, невозможно напрямую использовать в методах, ожидающих на вход блоки. Для этого нужен специальный синтаксис:<br>

[1, 2].map &square # [1, 4]<br>

Амперсанд, добавленный в начале переменной, содержащей блок, передает этот блок в функцию не как параметр, а как блок. Но тут нас ждет сюрприз:<br>

Завершится с ошибкой<br>
[1, 2].map() &square<br>

Сработает<br>
[1, 2].map(&square)<br>

Блок выше не передается как параметр, это легко увидеть, если посмотреть на определение метода map(). Он не принимает на вход никаких параметров.<br>
# Задание
Реализуйте функцию apply_blocks(data, blocks), которая принимает на вход данные и массив блоков. Эта функция должна по цепочке вызывать блоки, передавая туда результат предыдущего вызова блока:<br>

proc1 = proc { |x| x + 1 }<br>
proc2 = proc { |x| x * 2 }<br>

apply_blocks(5, [proc1, proc2]) # 12<br>
proc2.call(proc1.call(5))<br><br>
apply_blocks(5, [proc2, proc1]) # 11<br>
 proc1.call(proc2.call(5))<br>