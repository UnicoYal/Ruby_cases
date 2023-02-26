# Задание

Реализуйте функцию get_men_count_by_year(), которая принимает список пользователей и возвращает объект, где ключ – это год рождения, а значение – это количество мужчин, родившихся в этот год.<br>

users = [<br>
  { name: 'Bronn', gender: 'male', birthday: '1973-03-23' },<br>
  { name: 'Reigar', gender: 'male', birthday: '1973-11-03' },<br>
  { name: 'Eiegon', gender: 'male', birthday: '1963-11-03' },<br>
  { name: 'Sansa', gender: 'female', birthday: '2012-11-03' },<br>
  { name: 'Jon', gender: 'male', birthday: '1980-11-03' },<br>
  { name: 'Robb', gender: 'male', birthday: '1980-05-14' },<br>
  { name: 'Tisha', gender: 'female', birthday: '2012-11-03' },<br>
  { name: 'Rick', gender: 'male', birthday: '2012-11-03' },<br>
  { name: 'Joffrey', gender: 'male', birthday: '1999-11-03' },<br>
  { name: 'Edd', gender: 'male', birthday: '1973-11-03' }<br>
]

get_men_count_by_year(users)<br>
 {<br>
   '1973' => 3,<br>
   '1963' => 1,<br>
   '1980' => 2,<br>
   '2012' => 1,<br>
   '1999' => 1<br>
 }<br>
