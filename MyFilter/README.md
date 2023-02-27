Реализуйте функцию my_filter(), которая умеет фильтровать переданную на вход коллекцию по условию в блоке: <br>
coll = [1, 2, 3] <br>
my_filter(coll) { |v| v.even? } # [2]<br>
my_filter(coll) { |v| v.odd? } # [1, 3]<br>

my_filter(coll, &:even?)<br>
my_filter(coll, &:odd?)<br>