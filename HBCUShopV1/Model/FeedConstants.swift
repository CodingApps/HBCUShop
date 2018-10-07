//
//  FeedConstants.swift
//  EBikeV1-TestA
//
//  Created by Rick Mc on 9/5/18.
//  Copyright © 2018 Rick Mc. All rights reserved.
//

import UIKit

struct Constants {
    
    struct NewsFeed {
        static let APIScheme = "https"
        static let APIHost = "openapi.etsy.com"
        static let APIPath = "/v2/listings/active"
    }
    
    struct NewsFeedParameterKeys {
        static let Method = "method"
        static let APIKey = "api_key"
  //      static let Language = "language"
        static let Keywords = "keywords"
  //      static let Page = "pageSize"
    }
    
    struct NewsFeedParameterValues {
        static let q = "\"resolution\""
        static let pageSize = "55"
        static let language = "en"
        static let apiKey = "ihanunogiibfy8rz3vyfpnur"
    }
    
    struct NewsFeedResponseKeys {
        static let Status = "status"
        static let TotalResults = "totalResults"
        static let Articles = "articles"
        static let Source = "source"
        static let Author = "author"
        static let Title = "title"
        static let Description = "description"
        static let Url = "url"
        static let UrlToImage = "urlToimage"
        static let PublishedAt = "publishedAt"
    }
}
