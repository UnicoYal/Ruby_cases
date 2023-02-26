Destructuring – синтаксический сахар для разложения составных данных на элементы. Удобная возможность языка, которая повышает читабельность кода, и немного сокращает его количество. <br>

data = ['hexlet', 'online courses', topics: ['php', 'js']]<br>
name, description, topics = data<br>
puts name # "hexlet"<br>
puts description # "online courses"<br>
puts topics # { topics: ["php", "js"] }<br>

Имена переменных name и description могут быть любыми, на деструктуризацию это не влияет. Стоит запомнить, что для деструктуризации вложенных массивов нам нужно знать либо количество элементов в массиве, либо пропустить их, чтобы не получить исключение. Пример:<br>

data = ['hexlet', 'online courses', ['php', 'js']]<br>
# для доступа ко вложенному массиву используются круглые скобки
name, description, (first_topic, second_topic) = data # учли количество элементов<br>

# _ – используется, когда значение не важно
_, _, (first_topic, _) = data # так же все элементы учтены<br>

# * – указывает, что нам не важны все значения
*, (_, second_topic) = data # пропустили элементы в первом массиве, во вложенном количество учтено<br>

# данный пример вызовет исключение: не учли количество элементов
name, description, (first_topic) = data # Error<br>

Часто деструктуризацию используют для отделения первого (или первых) элемента от остальных. Для этого используется splat-оператор – *.<br>

data = ['hexlet', 'online courses', ['php', 'js']]<br>
name, *rest = data<br>
puts rest # ["online courses", ["php", "js"]]<br>

# В любом месте
name, *rest, topic = data<br>
puts rest # ["online courses"]<br>

Деструктуризация может применяться везде, включая параметры функций и блоков:<br>

# разложен первый аргумент, обязательны скобки
def process((name, *rest))<br>
   логика<br>
end<br>

data = ['hexlet', 'online courses', 'programming']<br>
process(data)<br>

# Задание
Реализуйте функцию convert(), которая преобразует переданные на вход данные по примеру: <br>

data = [<br>
  ['ruby', 'dynamic', 'strong'],<br>
  ['js', 'dynamic', 'weak'],<br>
  ['c', 'static', 'weak'],<br>
  ['kotlin', 'static', 'strong']<br>
]<br>
Удаляет вид типизации (второй элемент в массиве)<br><br>
result = convert(data)<br>
  [<br>
    ['ruby', 'strong'],<br>
    ['js', 'weak'],<br>
    ['c', 'weak'],<br>
    ['kotlin', 'strong']<br>
  ]<br>

