//
//  Network.swift
//  FootballPassport
//
//  Created by Haydn Joel Gately on 26/06/2020.
//  Copyright © 2020 Haydn Gately. All rights reserved.
//

import Foundation
import CoreData
import Apollo
class Network {
    static let shared = Network()
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api-eu-central-1.graphcms.com/v2/ckbuiu23i00xo01z1dcb951t1/master")!)
}
