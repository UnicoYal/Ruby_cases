transform_values<br>
Этот метод позволяет преобразовать значения, оставив ключи. На выходе получается новый хеш:<br>
new_data = data.transform_values { |value| value.upcase }<br>
# { clojure: "DYNAMIC", go: "STATIC", kotlin: "STATIC" }<br>
С помощью этого метода можно даже поменять тип значений и сделать их, например, массивами. Точно такой же метод есть и для ключей: transform_keys.<br><br>

slice<br>
Слайс позволяет извлечь из хеша только его часть по указанным ключам:<br>
data.slice(:clojure, :go)<br>
# { clojure: "dynamic", go: "static" }<br><br>

select<br>
Для более сложных ситуаций подходит метод select — он действует как фильтр и извлекает из хеша его часть, которая соответствует нужным условиям:<br>
data.select { |key, value| value == 'static' }<br>
# { go: "static", kotlin: "static" }<br><br>

empty?<br>
key?<br>
Иногда бывает полезно проверить хеш на пустоту, за это отвечает метод empty? и проверить в хеше наличие ключа - это метод key?:<br>
data.empty? # false<br>
data.clear # метод clear очищает хеш<br>
data.empty? # true<br>
data.key? :go # true<br>


merge<br>

Метод merge позволяет объединить два хеша. Если в целевом хеше обнаружен дубликат, то он будет перезаписан:<br><br>
with_ruby = data.merge(ruby:'dynamic')<br>
puts whith_ruby <br>
# => { clojure: "dynamic", go: "static", kotlin: "static", ruby: "dynamic" }<br>
new_hash = data.merge(go:'compiled')<br>
puts new_hash<br>
# => { clojure: "dynamic", go: "compiled", kotlin: "static", ruby: "dynamic" }<br>

merge может принимать блок, который можно использовать например для устранения коллизий:<br><br>
data = { password: '123456' }<br>
new_data = { password: '123' }<br>
data.merge(new_data) do |key, old_password, new_password| <br>
  new_password.length >= 6 ? new_password : old_password<br>
end<br><br>
Реализуйте функцию plainify, которая принимает на вход список песен сгруппированных по имени группы и возвращает плоский список песен, удобный для вывода на экран.