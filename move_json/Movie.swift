//
//  Movie.swift
//  move_json
//
//  Created by Marquavious on 7/14/17.
//  Copyright © 2017 Marquavious Draggon. All rights reserved.
//

import Foundation
import SwiftyJSON

class Movie {
    var title: String
    var author: String
    
    // The int takes in JSON and parses it for us.
    // After that, it sets the values for us.
    // If any of the values return nil, the
    // object will not be created!
    init?(_ json: JSON){
        guard let title = json["title"]["label"].string,
            let author = json["im:artist"]["label"].string
            else { return nil }
        self.title = title
        self.author = author
    }
}
