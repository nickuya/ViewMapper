//
//  CellAdapters.swift
//  ViewMapper
//
//  Created by Nick Kuyakanon on 2/24/17.
//  Copyright © 2017 4f Tech. All rights reserved.
//

import Foundation

public protocol CellMapperAdapter {
  associatedtype T: ViewMappable
  
  var onSelectCell: ((T.T, UIViewController?) -> Void)? { get set }
  var onDeselectCell: ((T.T, UIViewController?) -> Void)? { get set }
  var onDequeueCell: ((T) -> Void)? { get set }
  var size: ((T.T) -> CGSize)? { get set }
  var canDelete: ((T.T) -> Bool)? { get set }
  
  var cellTypes: [CellMapperType] { get }
  func cellIdentifier(forRow row: T.T) -> String
}

