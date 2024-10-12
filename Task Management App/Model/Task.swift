import SwiftUI

// A structure that defines a Task model with an ID, title, creation date, completion status, and a color tint.
struct Task: Identifiable {
    var id: UUID = .init()
    var taskTitle: String
    var creationDate: Date = .init()
    var isCompleted: Bool = false
    var tint: Color
}

// An array of sample tasks, each initialized with a title, creation date, completion status, and color tint.
var sampleTasks: [Task] = [
    .init(taskTitle: "Record Video", creationDate: .init(), isCompleted: true, tint: .taskColor1),
    .init(taskTitle: "Redesign Website", creationDate: .init(), tint: .taskColor2),
    .init(taskTitle: "Go for a Walk", creationDate: .init(), tint: .taskColor3),
    .init(taskTitle: "Edit Video", creationDate: .init(), isCompleted: true, tint: .taskColor4),
    .init(taskTitle: "Publish Video", creationDate: .init(), isCompleted: true, tint: .taskColor1),
    .init(taskTitle: "Tweet about new Video!", creationDate: .init(), tint: .taskColor5)
]

// Extension for the Date structure that allows you to add or subtract hours from the current date.
extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}
