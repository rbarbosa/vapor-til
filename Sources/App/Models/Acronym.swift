import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String

    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

//extension Acronym: Model {
//    typealias Database = SQLiteDatabase
//
//    typealias ID = Int
//
//    public static var idKey: IDKey = \Acronym.id
//}

// This is the same as making the `Acronym` model conform to `Model` protocol
extension Acronym: SQLiteModel {}

extension Acronym: Migration {}

extension Acronym: Content {}

/*
 To create an acronym, the user’s browser sends a POST request containing a JSON payload that looks similar to the following:
 {
    "short": "OMG",
    "long": "Oh My God"
 }
*/
