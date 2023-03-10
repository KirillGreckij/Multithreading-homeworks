//
//  PostProf.swift
//  StorageService
//
//  Created by Кирилл Грецкий on 10.03.2023.
//

import Foundation

public struct PostProf {
    public let author: String
    public var description: String
    public let image: String
    public let likes: Int
    public let views: Int
    
    
    public static func posts() -> [PostProf] {
        var array = [PostProf]()
        array.append(PostProf(author: "HBO", description: "Рыцари, мертвецы и драконы — в эпической битве за судьбы мира.", image: "Игра престолов", likes: 12134, views: 123276))
        array.append(PostProf(author: "HBO", description: "Страшная авария глазами ученых, политиков и спасателей. ", image: "Чернобыль", likes: 987123, views: 34523))
        array.append(PostProf(author: "HBO", description: "The Last of Us", image: "Одни из нас", likes: 123423, views: 2234323))
        array.append(PostProf(author: "Netflix", description: "Ведьмак Геральт, мутант и убийца чудовищ", image: "Ведьмак", likes: 122343, views: 22343))
        array.append(PostProf(author: "Apple", description: "Тренер сборной колледжа Канзаса по американскому футболу Тед Лассо", image: "Тед Лассо", likes: 156723, views: 278933))
        
        return array
    }
}

