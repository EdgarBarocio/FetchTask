//
//  State.swift
//  FetchTakeHome
//
//  Created by Edgar Barocio on 1/31/25.
//

import Foundation

import Foundation

enum State<T> {
    case idle
    case loaded(T)
    case loading
    case error(String)
}
