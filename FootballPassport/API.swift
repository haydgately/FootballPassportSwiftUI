// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class ChecklistQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Checklist {
      visits {
        __typename
        groundName
        homeTeam
      }
    }
    """

  public let operationName: String = "Checklist"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("visits", type: .nonNull(.list(.nonNull(.object(Visit.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(visits: [Visit]) {
      self.init(unsafeResultMap: ["__typename": "Query", "visits": visits.map { (value: Visit) -> ResultMap in value.resultMap }])
    }

    /// Retrieve multiple visits
    public var visits: [Visit] {
      get {
        return (resultMap["visits"] as! [ResultMap]).map { (value: ResultMap) -> Visit in Visit(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Visit) -> ResultMap in value.resultMap }, forKey: "visits")
      }
    }

    public struct Visit: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Visit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("groundName", type: .nonNull(.scalar(String.self))),
        GraphQLField("homeTeam", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(groundName: String, homeTeam: String) {
        self.init(unsafeResultMap: ["__typename": "Visit", "groundName": groundName, "homeTeam": homeTeam])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var groundName: String {
        get {
          return resultMap["groundName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "groundName")
        }
      }

      public var homeTeam: String {
        get {
          return resultMap["homeTeam"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "homeTeam")
        }
      }
    }
  }
}
