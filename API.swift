//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct ModelStringKeyConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "beginsWith": beginsWith]
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public enum ModelSortDirection: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ASC": self = .asc
      case "DESC": self = .desc
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "ASC"
      case .desc: return "DESC"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelSortDirection, rhs: ModelSortDirection) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelEventFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, type: ModelStringInput? = nil, name: ModelStringInput? = nil, startDate: ModelStringInput? = nil, endDate: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelEventFilterInput?]? = nil, or: [ModelEventFilterInput?]? = nil, not: ModelEventFilterInput? = nil) {
    graphQLMap = ["id": id, "type": type, "name": name, "start_date": startDate, "end_date": endDate, "description": description, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var type: ModelStringInput? {
    get {
      return graphQLMap["type"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var startDate: ModelStringInput? {
    get {
      return graphQLMap["start_date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: ModelStringInput? {
    get {
      return graphQLMap["end_date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelEventFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelEventFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelEventFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelEventFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelEventFilterInput? {
    get {
      return graphQLMap["not"] as! ModelEventFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct CreateVenueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, description: String? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct ModelVenueConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelVenueConditionInput?]? = nil, or: [ModelVenueConditionInput?]? = nil, not: ModelVenueConditionInput? = nil) {
    graphQLMap = ["name": name, "description": description, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelVenueConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelVenueConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelVenueConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelVenueConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelVenueConditionInput? {
    get {
      return graphQLMap["not"] as! ModelVenueConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateVenueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, description: String? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct DeleteVenueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateArtistInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, description: String? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct ModelArtistConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelArtistConditionInput?]? = nil, or: [ModelArtistConditionInput?]? = nil, not: ModelArtistConditionInput? = nil) {
    graphQLMap = ["name": name, "description": description, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelArtistConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelArtistConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelArtistConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelArtistConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelArtistConditionInput? {
    get {
      return graphQLMap["not"] as! ModelArtistConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateArtistInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, description: String? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct DeleteArtistInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateBookingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, artistId: GraphQLID, eventId: GraphQLID) {
    graphQLMap = ["id": id, "artistID": artistId, "eventID": eventId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var artistId: GraphQLID {
    get {
      return graphQLMap["artistID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "artistID")
    }
  }

  public var eventId: GraphQLID {
    get {
      return graphQLMap["eventID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eventID")
    }
  }
}

public struct ModelBookingConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(artistId: ModelIDInput? = nil, eventId: ModelIDInput? = nil, and: [ModelBookingConditionInput?]? = nil, or: [ModelBookingConditionInput?]? = nil, not: ModelBookingConditionInput? = nil) {
    graphQLMap = ["artistID": artistId, "eventID": eventId, "and": and, "or": or, "not": not]
  }

  public var artistId: ModelIDInput? {
    get {
      return graphQLMap["artistID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "artistID")
    }
  }

  public var eventId: ModelIDInput? {
    get {
      return graphQLMap["eventID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eventID")
    }
  }

  public var and: [ModelBookingConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBookingConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBookingConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBookingConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBookingConditionInput? {
    get {
      return graphQLMap["not"] as! ModelBookingConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateBookingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, artistId: GraphQLID? = nil, eventId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "artistID": artistId, "eventID": eventId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var artistId: GraphQLID? {
    get {
      return graphQLMap["artistID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "artistID")
    }
  }

  public var eventId: GraphQLID? {
    get {
      return graphQLMap["eventID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eventID")
    }
  }
}

public struct DeleteBookingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateEventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, type: String? = nil, name: String, startDate: String, endDate: String, description: String? = nil, eventVenueId: GraphQLID) {
    graphQLMap = ["id": id, "type": type, "name": name, "start_date": startDate, "end_date": endDate, "description": description, "eventVenueId": eventVenueId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var startDate: String {
    get {
      return graphQLMap["start_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: String {
    get {
      return graphQLMap["end_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var eventVenueId: GraphQLID {
    get {
      return graphQLMap["eventVenueId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eventVenueId")
    }
  }
}

public struct ModelEventConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(type: ModelStringInput? = nil, name: ModelStringInput? = nil, startDate: ModelStringInput? = nil, endDate: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelEventConditionInput?]? = nil, or: [ModelEventConditionInput?]? = nil, not: ModelEventConditionInput? = nil) {
    graphQLMap = ["type": type, "name": name, "start_date": startDate, "end_date": endDate, "description": description, "and": and, "or": or, "not": not]
  }

  public var type: ModelStringInput? {
    get {
      return graphQLMap["type"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var startDate: ModelStringInput? {
    get {
      return graphQLMap["start_date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: ModelStringInput? {
    get {
      return graphQLMap["end_date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelEventConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelEventConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelEventConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelEventConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelEventConditionInput? {
    get {
      return graphQLMap["not"] as! ModelEventConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateEventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, type: String? = nil, name: String? = nil, startDate: String? = nil, endDate: String? = nil, description: String? = nil, eventVenueId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "type": type, "name": name, "start_date": startDate, "end_date": endDate, "description": description, "eventVenueId": eventVenueId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var type: String? {
    get {
      return graphQLMap["type"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var startDate: String? {
    get {
      return graphQLMap["start_date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: String? {
    get {
      return graphQLMap["end_date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var eventVenueId: GraphQLID? {
    get {
      return graphQLMap["eventVenueId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eventVenueId")
    }
  }
}

public struct DeleteEventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelVenueFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelVenueFilterInput?]? = nil, or: [ModelVenueFilterInput?]? = nil, not: ModelVenueFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelVenueFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelVenueFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelVenueFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelVenueFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelVenueFilterInput? {
    get {
      return graphQLMap["not"] as! ModelVenueFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelArtistFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelArtistFilterInput?]? = nil, or: [ModelArtistFilterInput?]? = nil, not: ModelArtistFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelArtistFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelArtistFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelArtistFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelArtistFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelArtistFilterInput? {
    get {
      return graphQLMap["not"] as! ModelArtistFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class ListEventsSummarizedQuery: GraphQLQuery {
  public static let operationString =
    "query ListEventsSummarized($type: String, $start_date: ModelStringKeyConditionInput, $sortDirection: ModelSortDirection, $filter: ModelEventFilterInput, $limit: Int, $nextToken: String) {\n  eventsByStartDate(type: $type, start_date: $start_date, sortDirection: $sortDirection, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        name\n      }\n      start_date\n    }\n    nextToken\n  }\n}"

  public var type: String?
  public var start_date: ModelStringKeyConditionInput?
  public var sortDirection: ModelSortDirection?
  public var filter: ModelEventFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(type: String? = nil, start_date: ModelStringKeyConditionInput? = nil, sortDirection: ModelSortDirection? = nil, filter: ModelEventFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.type = type
    self.start_date = start_date
    self.sortDirection = sortDirection
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["type": type, "start_date": start_date, "sortDirection": sortDirection, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("eventsByStartDate", arguments: ["type": GraphQLVariable("type"), "start_date": GraphQLVariable("start_date"), "sortDirection": GraphQLVariable("sortDirection"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(EventsByStartDate.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(eventsByStartDate: EventsByStartDate? = nil) {
      self.init(snapshot: ["__typename": "Query", "eventsByStartDate": eventsByStartDate.flatMap { $0.snapshot }])
    }

    public var eventsByStartDate: EventsByStartDate? {
      get {
        return (snapshot["eventsByStartDate"] as? Snapshot).flatMap { EventsByStartDate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "eventsByStartDate")
      }
    }

    public struct EventsByStartDate: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelEventConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelEventConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, startDate: String) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "start_date": startDate])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String) {
            self.init(snapshot: ["__typename": "Venue", "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class GetEventDetailsQuery: GraphQLQuery {
  public static let operationString =
    "query GetEventDetails($id: ID!) {\n  getEvent(id: $id) {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        artist {\n          __typename\n          id\n          name\n          description\n        }\n      }\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEvent", arguments: ["id": GraphQLVariable("id")], type: .object(GetEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEvent: GetEvent? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEvent": getEvent.flatMap { $0.snapshot }])
    }

    public var getEvent: GetEvent? {
      get {
        return (snapshot["getEvent"] as? Snapshot).flatMap { GetEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEvent")
      }
    }

    public struct GetEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(artist: Artist) {
            self.init(snapshot: ["__typename": "Booking", "artist": artist.snapshot])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var artist: Artist {
            get {
              return Artist(snapshot: snapshot["artist"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "artist")
            }
          }

          public struct Artist: GraphQLSelectionSet {
            public static let possibleTypes = ["Artist"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("description", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, description: String? = nil) {
              self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return snapshot["name"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "name")
              }
            }

            public var description: String? {
              get {
                return snapshot["description"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "description")
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateVenueMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateVenue($input: CreateVenueInput!, $condition: ModelVenueConditionInput) {\n  createVenue(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var input: CreateVenueInput
  public var condition: ModelVenueConditionInput?

  public init(input: CreateVenueInput, condition: ModelVenueConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createVenue", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createVenue: CreateVenue? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createVenue": createVenue.flatMap { $0.snapshot }])
    }

    public var createVenue: CreateVenue? {
      get {
        return (snapshot["createVenue"] as? Snapshot).flatMap { CreateVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createVenue")
      }
    }

    public struct CreateVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class UpdateVenueMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateVenue($input: UpdateVenueInput!, $condition: ModelVenueConditionInput) {\n  updateVenue(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var input: UpdateVenueInput
  public var condition: ModelVenueConditionInput?

  public init(input: UpdateVenueInput, condition: ModelVenueConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateVenue", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateVenue: UpdateVenue? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateVenue": updateVenue.flatMap { $0.snapshot }])
    }

    public var updateVenue: UpdateVenue? {
      get {
        return (snapshot["updateVenue"] as? Snapshot).flatMap { UpdateVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateVenue")
      }
    }

    public struct UpdateVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class DeleteVenueMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteVenue($input: DeleteVenueInput!, $condition: ModelVenueConditionInput) {\n  deleteVenue(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var input: DeleteVenueInput
  public var condition: ModelVenueConditionInput?

  public init(input: DeleteVenueInput, condition: ModelVenueConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteVenue", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteVenue: DeleteVenue? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteVenue": deleteVenue.flatMap { $0.snapshot }])
    }

    public var deleteVenue: DeleteVenue? {
      get {
        return (snapshot["deleteVenue"] as? Snapshot).flatMap { DeleteVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteVenue")
      }
    }

    public struct DeleteVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class CreateArtistMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateArtist($input: CreateArtistInput!, $condition: ModelArtistConditionInput) {\n  createArtist(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public var input: CreateArtistInput
  public var condition: ModelArtistConditionInput?

  public init(input: CreateArtistInput, condition: ModelArtistConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createArtist", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createArtist: CreateArtist? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createArtist": createArtist.flatMap { $0.snapshot }])
    }

    public var createArtist: CreateArtist? {
      get {
        return (snapshot["createArtist"] as? Snapshot).flatMap { CreateArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createArtist")
      }
    }

    public struct CreateArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class UpdateArtistMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateArtist($input: UpdateArtistInput!, $condition: ModelArtistConditionInput) {\n  updateArtist(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public var input: UpdateArtistInput
  public var condition: ModelArtistConditionInput?

  public init(input: UpdateArtistInput, condition: ModelArtistConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateArtist", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateArtist: UpdateArtist? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateArtist": updateArtist.flatMap { $0.snapshot }])
    }

    public var updateArtist: UpdateArtist? {
      get {
        return (snapshot["updateArtist"] as? Snapshot).flatMap { UpdateArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateArtist")
      }
    }

    public struct UpdateArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class DeleteArtistMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteArtist($input: DeleteArtistInput!, $condition: ModelArtistConditionInput) {\n  deleteArtist(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public var input: DeleteArtistInput
  public var condition: ModelArtistConditionInput?

  public init(input: DeleteArtistInput, condition: ModelArtistConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteArtist", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteArtist: DeleteArtist? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteArtist": deleteArtist.flatMap { $0.snapshot }])
    }

    public var deleteArtist: DeleteArtist? {
      get {
        return (snapshot["deleteArtist"] as? Snapshot).flatMap { DeleteArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteArtist")
      }
    }

    public struct DeleteArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class CreateBookingMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateBooking($input: CreateBookingInput!, $condition: ModelBookingConditionInput) {\n  createBooking(input: $input, condition: $condition) {\n    __typename\n    id\n    artistID\n    eventID\n    artist {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    event {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n  }\n}"

  public var input: CreateBookingInput
  public var condition: ModelBookingConditionInput?

  public init(input: CreateBookingInput, condition: ModelBookingConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createBooking", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createBooking: CreateBooking? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createBooking": createBooking.flatMap { $0.snapshot }])
    }

    public var createBooking: CreateBooking? {
      get {
        return (snapshot["createBooking"] as? Snapshot).flatMap { CreateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createBooking")
      }
    }

    public struct CreateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
        GraphQLField("event", type: .nonNull(.object(Event.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID, artist: Artist, event: Event) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId, "artist": artist.snapshot, "event": event.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var artistId: GraphQLID {
        get {
          return snapshot["artistID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "artistID")
        }
      }

      public var eventId: GraphQLID {
        get {
          return snapshot["eventID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventID")
        }
      }

      public var artist: Artist {
        get {
          return Artist(snapshot: snapshot["artist"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "artist")
        }
      }

      public var event: Event {
        get {
          return Event(snapshot: snapshot["event"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "event")
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class UpdateBookingMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateBooking($input: UpdateBookingInput!, $condition: ModelBookingConditionInput) {\n  updateBooking(input: $input, condition: $condition) {\n    __typename\n    id\n    artistID\n    eventID\n    artist {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    event {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n  }\n}"

  public var input: UpdateBookingInput
  public var condition: ModelBookingConditionInput?

  public init(input: UpdateBookingInput, condition: ModelBookingConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBooking", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateBooking: UpdateBooking? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateBooking": updateBooking.flatMap { $0.snapshot }])
    }

    public var updateBooking: UpdateBooking? {
      get {
        return (snapshot["updateBooking"] as? Snapshot).flatMap { UpdateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateBooking")
      }
    }

    public struct UpdateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
        GraphQLField("event", type: .nonNull(.object(Event.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID, artist: Artist, event: Event) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId, "artist": artist.snapshot, "event": event.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var artistId: GraphQLID {
        get {
          return snapshot["artistID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "artistID")
        }
      }

      public var eventId: GraphQLID {
        get {
          return snapshot["eventID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventID")
        }
      }

      public var artist: Artist {
        get {
          return Artist(snapshot: snapshot["artist"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "artist")
        }
      }

      public var event: Event {
        get {
          return Event(snapshot: snapshot["event"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "event")
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class DeleteBookingMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteBooking($input: DeleteBookingInput!, $condition: ModelBookingConditionInput) {\n  deleteBooking(input: $input, condition: $condition) {\n    __typename\n    id\n    artistID\n    eventID\n    artist {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    event {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n  }\n}"

  public var input: DeleteBookingInput
  public var condition: ModelBookingConditionInput?

  public init(input: DeleteBookingInput, condition: ModelBookingConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBooking", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteBooking: DeleteBooking? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteBooking": deleteBooking.flatMap { $0.snapshot }])
    }

    public var deleteBooking: DeleteBooking? {
      get {
        return (snapshot["deleteBooking"] as? Snapshot).flatMap { DeleteBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteBooking")
      }
    }

    public struct DeleteBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
        GraphQLField("event", type: .nonNull(.object(Event.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID, artist: Artist, event: Event) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId, "artist": artist.snapshot, "event": event.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var artistId: GraphQLID {
        get {
          return snapshot["artistID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "artistID")
        }
      }

      public var eventId: GraphQLID {
        get {
          return snapshot["eventID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventID")
        }
      }

      public var artist: Artist {
        get {
          return Artist(snapshot: snapshot["artist"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "artist")
        }
      }

      public var event: Event {
        get {
          return Event(snapshot: snapshot["event"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "event")
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class CreateEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateEvent($input: CreateEventInput!, $condition: ModelEventConditionInput) {\n  createEvent(input: $input, condition: $condition) {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public var input: CreateEventInput
  public var condition: ModelEventConditionInput?

  public init(input: CreateEventInput, condition: ModelEventConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createEvent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createEvent: CreateEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createEvent": createEvent.flatMap { $0.snapshot }])
    }

    public var createEvent: CreateEvent? {
      get {
        return (snapshot["createEvent"] as? Snapshot).flatMap { CreateEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createEvent")
      }
    }

    public struct CreateEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class UpdateEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateEvent($input: UpdateEventInput!, $condition: ModelEventConditionInput) {\n  updateEvent(input: $input, condition: $condition) {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public var input: UpdateEventInput
  public var condition: ModelEventConditionInput?

  public init(input: UpdateEventInput, condition: ModelEventConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateEvent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateEvent: UpdateEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateEvent": updateEvent.flatMap { $0.snapshot }])
    }

    public var updateEvent: UpdateEvent? {
      get {
        return (snapshot["updateEvent"] as? Snapshot).flatMap { UpdateEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateEvent")
      }
    }

    public struct UpdateEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class DeleteEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteEvent($input: DeleteEventInput!, $condition: ModelEventConditionInput) {\n  deleteEvent(input: $input, condition: $condition) {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public var input: DeleteEventInput
  public var condition: ModelEventConditionInput?

  public init(input: DeleteEventInput, condition: ModelEventConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteEvent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteEvent: DeleteEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteEvent": deleteEvent.flatMap { $0.snapshot }])
    }

    public var deleteEvent: DeleteEvent? {
      get {
        return (snapshot["deleteEvent"] as? Snapshot).flatMap { DeleteEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteEvent")
      }
    }

    public struct DeleteEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class GetVenueQuery: GraphQLQuery {
  public static let operationString =
    "query GetVenue($id: ID!) {\n  getVenue(id: $id) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getVenue", arguments: ["id": GraphQLVariable("id")], type: .object(GetVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getVenue: GetVenue? = nil) {
      self.init(snapshot: ["__typename": "Query", "getVenue": getVenue.flatMap { $0.snapshot }])
    }

    public var getVenue: GetVenue? {
      get {
        return (snapshot["getVenue"] as? Snapshot).flatMap { GetVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getVenue")
      }
    }

    public struct GetVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class ListVenuesQuery: GraphQLQuery {
  public static let operationString =
    "query ListVenues($filter: ModelVenueFilterInput, $limit: Int, $nextToken: String) {\n  listVenues(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      description\n    }\n    nextToken\n  }\n}"

  public var filter: ModelVenueFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelVenueFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listVenues", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listVenues: ListVenue? = nil) {
      self.init(snapshot: ["__typename": "Query", "listVenues": listVenues.flatMap { $0.snapshot }])
    }

    public var listVenues: ListVenue? {
      get {
        return (snapshot["listVenues"] as? Snapshot).flatMap { ListVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listVenues")
      }
    }

    public struct ListVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelVenueConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelVenueConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }
    }
  }
}

public final class GetArtistQuery: GraphQLQuery {
  public static let operationString =
    "query GetArtist($id: ID!) {\n  getArtist(id: $id) {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getArtist", arguments: ["id": GraphQLVariable("id")], type: .object(GetArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getArtist: GetArtist? = nil) {
      self.init(snapshot: ["__typename": "Query", "getArtist": getArtist.flatMap { $0.snapshot }])
    }

    public var getArtist: GetArtist? {
      get {
        return (snapshot["getArtist"] as? Snapshot).flatMap { GetArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getArtist")
      }
    }

    public struct GetArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class ListArtistsQuery: GraphQLQuery {
  public static let operationString =
    "query ListArtists($filter: ModelArtistFilterInput, $limit: Int, $nextToken: String) {\n  listArtists(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelArtistFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelArtistFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listArtists", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listArtists: ListArtist? = nil) {
      self.init(snapshot: ["__typename": "Query", "listArtists": listArtists.flatMap { $0.snapshot }])
    }

    public var listArtists: ListArtist? {
      get {
        return (snapshot["listArtists"] as? Snapshot).flatMap { ListArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listArtists")
      }
    }

    public struct ListArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelArtistConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelArtistConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetEventQuery: GraphQLQuery {
  public static let operationString =
    "query GetEvent($id: ID!) {\n  getEvent(id: $id) {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEvent", arguments: ["id": GraphQLVariable("id")], type: .object(GetEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEvent: GetEvent? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEvent": getEvent.flatMap { $0.snapshot }])
    }

    public var getEvent: GetEvent? {
      get {
        return (snapshot["getEvent"] as? Snapshot).flatMap { GetEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEvent")
      }
    }

    public struct GetEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class ListEventsQuery: GraphQLQuery {
  public static let operationString =
    "query ListEvents($filter: ModelEventFilterInput, $limit: Int, $nextToken: String) {\n  listEvents(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n    nextToken\n  }\n}"

  public var filter: ModelEventFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelEventFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listEvents", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listEvents: ListEvent? = nil) {
      self.init(snapshot: ["__typename": "Query", "listEvents": listEvents.flatMap { $0.snapshot }])
    }

    public var listEvents: ListEvent? {
      get {
        return (snapshot["listEvents"] as? Snapshot).flatMap { ListEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listEvents")
      }
    }

    public struct ListEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelEventConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelEventConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class EventsByStartDateQuery: GraphQLQuery {
  public static let operationString =
    "query EventsByStartDate($type: String, $start_date: ModelStringKeyConditionInput, $sortDirection: ModelSortDirection, $filter: ModelEventFilterInput, $limit: Int, $nextToken: String) {\n  eventsByStartDate(type: $type, start_date: $start_date, sortDirection: $sortDirection, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n    nextToken\n  }\n}"

  public var type: String?
  public var start_date: ModelStringKeyConditionInput?
  public var sortDirection: ModelSortDirection?
  public var filter: ModelEventFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(type: String? = nil, start_date: ModelStringKeyConditionInput? = nil, sortDirection: ModelSortDirection? = nil, filter: ModelEventFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.type = type
    self.start_date = start_date
    self.sortDirection = sortDirection
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["type": type, "start_date": start_date, "sortDirection": sortDirection, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("eventsByStartDate", arguments: ["type": GraphQLVariable("type"), "start_date": GraphQLVariable("start_date"), "sortDirection": GraphQLVariable("sortDirection"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(EventsByStartDate.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(eventsByStartDate: EventsByStartDate? = nil) {
      self.init(snapshot: ["__typename": "Query", "eventsByStartDate": eventsByStartDate.flatMap { $0.snapshot }])
    }

    public var eventsByStartDate: EventsByStartDate? {
      get {
        return (snapshot["eventsByStartDate"] as? Snapshot).flatMap { EventsByStartDate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "eventsByStartDate")
      }
    }

    public struct EventsByStartDate: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelEventConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelEventConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateVenueSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateVenue {\n  onCreateVenue {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateVenue", type: .object(OnCreateVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateVenue: OnCreateVenue? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateVenue": onCreateVenue.flatMap { $0.snapshot }])
    }

    public var onCreateVenue: OnCreateVenue? {
      get {
        return (snapshot["onCreateVenue"] as? Snapshot).flatMap { OnCreateVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateVenue")
      }
    }

    public struct OnCreateVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class OnUpdateVenueSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateVenue {\n  onUpdateVenue {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateVenue", type: .object(OnUpdateVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateVenue: OnUpdateVenue? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateVenue": onUpdateVenue.flatMap { $0.snapshot }])
    }

    public var onUpdateVenue: OnUpdateVenue? {
      get {
        return (snapshot["onUpdateVenue"] as? Snapshot).flatMap { OnUpdateVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateVenue")
      }
    }

    public struct OnUpdateVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class OnDeleteVenueSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteVenue {\n  onDeleteVenue {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteVenue", type: .object(OnDeleteVenue.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteVenue: OnDeleteVenue? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteVenue": onDeleteVenue.flatMap { $0.snapshot }])
    }

    public var onDeleteVenue: OnDeleteVenue? {
      get {
        return (snapshot["onDeleteVenue"] as? Snapshot).flatMap { OnDeleteVenue(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteVenue")
      }
    }

    public struct OnDeleteVenue: GraphQLSelectionSet {
      public static let possibleTypes = ["Venue"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class OnCreateArtistSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateArtist {\n  onCreateArtist {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateArtist", type: .object(OnCreateArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateArtist: OnCreateArtist? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateArtist": onCreateArtist.flatMap { $0.snapshot }])
    }

    public var onCreateArtist: OnCreateArtist? {
      get {
        return (snapshot["onCreateArtist"] as? Snapshot).flatMap { OnCreateArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateArtist")
      }
    }

    public struct OnCreateArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateArtistSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateArtist {\n  onUpdateArtist {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateArtist", type: .object(OnUpdateArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateArtist: OnUpdateArtist? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateArtist": onUpdateArtist.flatMap { $0.snapshot }])
    }

    public var onUpdateArtist: OnUpdateArtist? {
      get {
        return (snapshot["onUpdateArtist"] as? Snapshot).flatMap { OnUpdateArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateArtist")
      }
    }

    public struct OnUpdateArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteArtistSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteArtist {\n  onDeleteArtist {\n    __typename\n    id\n    name\n    description\n    events {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteArtist", type: .object(OnDeleteArtist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteArtist: OnDeleteArtist? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteArtist": onDeleteArtist.flatMap { $0.snapshot }])
    }

    public var onDeleteArtist: OnDeleteArtist? {
      get {
        return (snapshot["onDeleteArtist"] as? Snapshot).flatMap { OnDeleteArtist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteArtist")
      }
    }

    public struct OnDeleteArtist: GraphQLSelectionSet {
      public static let possibleTypes = ["Artist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("events", type: .object(Event.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
        self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var events: Event? {
        get {
          return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateBookingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateBooking {\n  onCreateBooking {\n    __typename\n    id\n    artistID\n    eventID\n    artist {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    event {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateBooking", type: .object(OnCreateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateBooking: OnCreateBooking? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateBooking": onCreateBooking.flatMap { $0.snapshot }])
    }

    public var onCreateBooking: OnCreateBooking? {
      get {
        return (snapshot["onCreateBooking"] as? Snapshot).flatMap { OnCreateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateBooking")
      }
    }

    public struct OnCreateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
        GraphQLField("event", type: .nonNull(.object(Event.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID, artist: Artist, event: Event) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId, "artist": artist.snapshot, "event": event.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var artistId: GraphQLID {
        get {
          return snapshot["artistID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "artistID")
        }
      }

      public var eventId: GraphQLID {
        get {
          return snapshot["eventID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventID")
        }
      }

      public var artist: Artist {
        get {
          return Artist(snapshot: snapshot["artist"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "artist")
        }
      }

      public var event: Event {
        get {
          return Event(snapshot: snapshot["event"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "event")
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateBookingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateBooking {\n  onUpdateBooking {\n    __typename\n    id\n    artistID\n    eventID\n    artist {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    event {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateBooking", type: .object(OnUpdateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateBooking: OnUpdateBooking? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateBooking": onUpdateBooking.flatMap { $0.snapshot }])
    }

    public var onUpdateBooking: OnUpdateBooking? {
      get {
        return (snapshot["onUpdateBooking"] as? Snapshot).flatMap { OnUpdateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateBooking")
      }
    }

    public struct OnUpdateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
        GraphQLField("event", type: .nonNull(.object(Event.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID, artist: Artist, event: Event) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId, "artist": artist.snapshot, "event": event.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var artistId: GraphQLID {
        get {
          return snapshot["artistID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "artistID")
        }
      }

      public var eventId: GraphQLID {
        get {
          return snapshot["eventID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventID")
        }
      }

      public var artist: Artist {
        get {
          return Artist(snapshot: snapshot["artist"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "artist")
        }
      }

      public var event: Event {
        get {
          return Event(snapshot: snapshot["event"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "event")
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteBookingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteBooking {\n  onDeleteBooking {\n    __typename\n    id\n    artistID\n    eventID\n    artist {\n      __typename\n      id\n      name\n      description\n      events {\n        __typename\n        nextToken\n      }\n    }\n    event {\n      __typename\n      id\n      type\n      name\n      venue {\n        __typename\n        id\n        name\n        description\n      }\n      artists {\n        __typename\n        nextToken\n      }\n      start_date\n      end_date\n      description\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteBooking", type: .object(OnDeleteBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteBooking: OnDeleteBooking? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteBooking": onDeleteBooking.flatMap { $0.snapshot }])
    }

    public var onDeleteBooking: OnDeleteBooking? {
      get {
        return (snapshot["onDeleteBooking"] as? Snapshot).flatMap { OnDeleteBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteBooking")
      }
    }

    public struct OnDeleteBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("artist", type: .nonNull(.object(Artist.selections))),
        GraphQLField("event", type: .nonNull(.object(Event.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID, artist: Artist, event: Event) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId, "artist": artist.snapshot, "event": event.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var artistId: GraphQLID {
        get {
          return snapshot["artistID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "artistID")
        }
      }

      public var eventId: GraphQLID {
        get {
          return snapshot["eventID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventID")
        }
      }

      public var artist: Artist {
        get {
          return Artist(snapshot: snapshot["artist"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "artist")
        }
      }

      public var event: Event {
        get {
          return Event(snapshot: snapshot["event"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "event")
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["Artist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("events", type: .object(Event.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil, events: Event? = nil) {
          self.init(snapshot: ["__typename": "Artist", "id": id, "name": name, "description": description, "events": events.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var events: Event? {
          get {
            return (snapshot["events"] as? Snapshot).flatMap { Event(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "events")
          }
        }

        public struct Event: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes = ["Event"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
          GraphQLField("artists", type: .object(Artist.selections)),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var venue: Venue {
          get {
            return Venue(snapshot: snapshot["venue"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "venue")
          }
        }

        public var artists: Artist? {
          get {
            return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "artists")
          }
        }

        public var startDate: String {
          get {
            return snapshot["start_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "start_date")
          }
        }

        public var endDate: String {
          get {
            return snapshot["end_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "end_date")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public struct Venue: GraphQLSelectionSet {
          public static let possibleTypes = ["Venue"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String? = nil) {
            self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }
        }

        public struct Artist: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateEventSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateEvent {\n  onCreateEvent {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateEvent", type: .object(OnCreateEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateEvent: OnCreateEvent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateEvent": onCreateEvent.flatMap { $0.snapshot }])
    }

    public var onCreateEvent: OnCreateEvent? {
      get {
        return (snapshot["onCreateEvent"] as? Snapshot).flatMap { OnCreateEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateEvent")
      }
    }

    public struct OnCreateEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateEventSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateEvent {\n  onUpdateEvent {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateEvent", type: .object(OnUpdateEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateEvent: OnUpdateEvent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateEvent": onUpdateEvent.flatMap { $0.snapshot }])
    }

    public var onUpdateEvent: OnUpdateEvent? {
      get {
        return (snapshot["onUpdateEvent"] as? Snapshot).flatMap { OnUpdateEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateEvent")
      }
    }

    public struct OnUpdateEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteEventSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteEvent {\n  onDeleteEvent {\n    __typename\n    id\n    type\n    name\n    venue {\n      __typename\n      id\n      name\n      description\n    }\n    artists {\n      __typename\n      items {\n        __typename\n        id\n        artistID\n        eventID\n      }\n      nextToken\n    }\n    start_date\n    end_date\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteEvent", type: .object(OnDeleteEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteEvent: OnDeleteEvent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteEvent": onDeleteEvent.flatMap { $0.snapshot }])
    }

    public var onDeleteEvent: OnDeleteEvent? {
      get {
        return (snapshot["onDeleteEvent"] as? Snapshot).flatMap { OnDeleteEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteEvent")
      }
    }

    public struct OnDeleteEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("venue", type: .nonNull(.object(Venue.selections))),
        GraphQLField("artists", type: .object(Artist.selections)),
        GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, type: String? = nil, name: String, venue: Venue, artists: Artist? = nil, startDate: String, endDate: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Event", "id": id, "type": type, "name": name, "venue": venue.snapshot, "artists": artists.flatMap { $0.snapshot }, "start_date": startDate, "end_date": endDate, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var venue: Venue {
        get {
          return Venue(snapshot: snapshot["venue"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "venue")
        }
      }

      public var artists: Artist? {
        get {
          return (snapshot["artists"] as? Snapshot).flatMap { Artist(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "artists")
        }
      }

      public var startDate: String {
        get {
          return snapshot["start_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return snapshot["end_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "end_date")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public struct Venue: GraphQLSelectionSet {
        public static let possibleTypes = ["Venue"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Venue", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Artist: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("artistID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("eventID", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, artistId: GraphQLID, eventId: GraphQLID) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "artistID": artistId, "eventID": eventId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var artistId: GraphQLID {
            get {
              return snapshot["artistID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "artistID")
            }
          }

          public var eventId: GraphQLID {
            get {
              return snapshot["eventID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventID")
            }
          }
        }
      }
    }
  }
}