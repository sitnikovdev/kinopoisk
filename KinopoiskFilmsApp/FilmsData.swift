//
//  FilmsData.swift
//  KinopoiskFilmsApp
//
//  Created by Oleg Sitnikov on 05.02.2020.
//  Copyright © 2020 Oleg Sitnikov. All rights reserved.
//

import Foundation

class FilmsData {
   
    
    
   static let films = [
        Film(localName: "Форрест Гамп", originalName: "Forrest Gump", year: "1994", rating: "4.9", description: "От лица главного героя Форреста Гампа, слабоумного безобидного человека с благородным и открытым сердцем, рассказывается история его необыкновенной жизни. Фантастическим образом превращается он в известного футболиста, героя войны, преуспевающего бизнесмена. Он становится миллиардером, но остается таким же бесхитростным, глупым и добрым. Форреста ждет постоянный успех во всем, а он любит девочку, с которой дружил в детстве, но взаимность приходит слишком поздно."),
        Film(localName: "Начало", originalName: "Inception", year: "2010", rating: "8.767", description: "Кобб — талантливый вор, лучший из лучших в опасном искусстве извлечения: он крадет ценные секреты из глубин подсознания во время сна, когда человеческий разум наиболее уязвим. Редкие способности Кобба сделали его ценным игроком в привычном к предательству мире промышленного шпионажа, но они же превратили его в извечного беглеца и лишили всего, что он когда-либо любил. И вот у Кобба появляется шанс исправить ошибки. Его последнее дело может вернуть все назад, но для этого ему нужно совершить невозможное — инициацию. Вместо идеальной кражи Кобб и его команда спецов должны будут провернуть обратное. Теперь их задача — не украсть идею, а внедрить ее. Если у них получится, это и станет идеальным преступлением. Но никакое планирование или мастерство не могут подготовить команду к встрече с опасным противником, который, кажется, предугадывает каждый их ход. Врагом, увидеть которого мог бы лишь Кобб."),
        Film(localName: "Король Лев", originalName: "The Lion King", year: "1994", rating: "8.675", description: "У величественного Короля-Льва Муфасы рождается наследник по имени Симба. Уже в детстве любознательный малыш становится жертвой интриг своего завистливого дяди Шрама, мечтающего о власти. Симба познаёт горе утраты, предательство и изгнание, но в конце концов обретает верных друзей и находит любимую. Закалённый испытаниями, он в нелёгкой борьбе отвоёвывает своё законное место в «Круге жизни», осознав, что значит быть настоящим Королём."),
        Film(localName: "Бойцовский клуб", originalName: "Fight Club", year: "1994", rating: "9.956", description: "Терзаемый хронической бессонницей и отчаянно пытающийся вырваться из мучительно скучной жизни, клерк встречает некоего Тайлера Дардена, харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а саморазрушение — единственное, ради чего стоит жить. Пройдет немного времени, и вот уже главные герои лупят друг друга почем зря на стоянке перед баром, и очищающий мордобой доставляет им высшее блаженство. Приобщая других мужчин к простым радостям физической жестокости, они основывают тайный Бойцовский Клуб, который имеет огромный успех. Но в концовке фильма всех ждет шокирующее открытие, которое может привести к непредсказуемым событиям…"),
        Film(localName: "Леон", originalName: "Leon", year: "1994", rating: "8.684", description: "Профессиональный убийца Леон, не знающий пощады и жалости, знакомится со своей очаровательной соседкой Матильдой, семью которой расстреливают полицейские, замешанные в торговле наркотиками. Благодаря этому знакомству он впервые испытывает чувство любви, но…"),
        Film(localName: "Тихоокеанский рубеж 2", originalName: "Pacific Rim: Uprising", year: "2018", rating: "6.083", description: "Команда пилотируемых роботов-защитников остановила вторжение гигантских инопланетных монстров. Великая битва за Тихоокеанский рубеж ознаменовала новую главу в истории человечества. Однако война только начинается…\n\rПришло время нового поколения отстаивать своё право на Землю."),
        Film(localName: "Зеленая миля", originalName: "The Green Mile", year: "1999", rating: "6.0", description: "Обвиненный в страшном преступлении, Джон Коффи оказывается в блоке смертников тюрьмы «Холодная гора». Вновь прибывший обладал поразительным ростом и был пугающе спокоен, что, впрочем, никак не влияло на отношение к нему начальника блока Пола Эджкомба, привыкшего исполнять приговор. Гигант удивил всех позже, когда выяснилось, что он обладает невероятной магической силой…"),
        Film(localName: "Список Шиндлера", originalName: "Schindler's List", year: "1993", rating: "5.0", description: "Фильм рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны почти 1200 евреев."),
        Film(localName: "1+1", originalName: "Intouchables", year: "2011", rating: "8.812", description: "Пострадав в результате несчастного случая, богатый аристократ Филипп нанимает в помощники человека, который менее всего подходит для этой работы, — молодого жителя предместья Дрисса, только что освободившегося из тюрьмы. Несмотря на то, что Филипп прикован к инвалидному креслу, Дриссу удается привнести в размеренную жизнь аристократа дух приключений.")
        
    ]
}

extension FilmsData {
    
    static func getFilms() -> [[Film]] {
        
        var filmsGrouped = [[Film]]()
        let groupByYear = Dictionary(grouping: films) { $0.year}
        
        let sortedYears = groupByYear.keys.sorted()
        
        sortedYears.forEach {(key) in
            let films = groupByYear[key]
            let orderByRating = films?.sorted(by: { (lhs, rhs) -> Bool in
                if let ratingLhs = Double(lhs.rating), let ratingRhs = Double(rhs.rating) {
                  return ratingRhs < ratingLhs
                }
                 return false
            })
            filmsGrouped.append(orderByRating ?? [])
        }
        
        return filmsGrouped
    }
}
