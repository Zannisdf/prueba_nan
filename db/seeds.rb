# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all

titles = [
  'Elevar volantín',
  'Subir el palo encebado',
  'Jugar al trompo',
  'Comer empanadas',
  'Ir a una fonda',
  'Tomar terremoto',
  'Bailar un pie de cueca',
  'Otro terremoto',
  '¿El último?',
  'Embriagarse',
  'Dormir en la calle',
  'Prometer no tomar más'
]

images = %w[
  https://www.vitamina.cl/wp-content/uploads/2018/09/volantin.jpg
  https://www.prensalibre.com/wp-content/uploads/2018/12/0aada4c1-b9ee-4ff3-9a7f-4e7f49e09d09.jpg
  http://educagratis.cl/moodle/pluginfile.php/13734/mod_page/content/1/trompo.jpg
  https://www.interpatagonia.com/recetas/empanadas_pino/empanadas-pino.jpg
  http://s3.amazonaws.com/lahora-cl-bkt/wp-content/uploads/2018/08/22003851/fondas-m.jpg
  https://2.bp.blogspot.com/-e_GfPr9xiLo/Uf10eYo36oI/AAAAAAAAQz8/ncam3h2KDTI/s1600/terremotoelnuevocongreso.jpg
  https://www.lacuarta.com/wp-content/uploads/2018/09/cueca.jpg
  https://gcdn.emol.cl/cultura-chilena/files/2015/08/terremoto.jpg
  https://i.ytimg.com/vi/9DZSpFlzp3s/hqdefault.jpg
  https://i.ytimg.com/vi/w_hq_9kWys0/maxresdefault.jpg
  https://1.bp.blogspot.com/_p-z3N6p79aw/SwRMxRgxKNI/AAAAAAAAIdA/6xbnfTfDxqM/s400/santarosaalameda.jpg
  https://media1.tenor.com/images/0b4d661028f549de3211105fa6d4785b/tenor.gif
]

12.times do |i|
  Task.create(
    title: titles[i],
    image_url: images[i]
  )
end
