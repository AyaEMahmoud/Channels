//
//  URLConstants.swift
//  Channels
//
//  Created by Aya E  Mahmoud on 3/23/20.
//  Copyright © 2020 Aya E  Mahmoud. All rights reserved.
//
struct APPURL {
    
    private struct Domains {
        static let Dev = ""
        static let Local = ""
        static let QC = ""
    }
    
    private struct Versions {
        static let Version1 = "/v1/"
        static let Version2 = "/v2/"
    }
    
    private struct Routes {
        static let Apis = "" //api
    }
    
    private static let Domain = Domains.Local
    private static let Version = Versions.Version1
    private static let Route = Routes.Apis
    
    public static var BaseUrl: String {
        return APPURL.Domain + APPURL.Version + APPURL.Route
    }
    
    struct Paths {
        static let Login = ""
    }
}
