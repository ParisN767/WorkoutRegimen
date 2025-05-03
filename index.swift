//Exercise structure
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init (name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

// Exercise instances
var pushUp = Exercise(name: "Push ups", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

var benchPress = Exercise(name: "bench press", muscleGroups: ["chest", "front-shoulder", "triceps"], reps: 8, sets: 4)

var squats = Exercise(name: "Squats", muscleGroups: ["quads", "hamstrings", "glutes"], reps: 10, sets: 4)

var tricepPushDown = Exercise(name: "Tricep Push Down", muscleGroups: ["medial-head", "long-head", "lateral-head"], reps: 10, sets: 3)

var shoulderPress = Exercise(name: "Shoulder Press", muscleGroups: ["deltoids", "triceps", "upper-chest"], reps: 8, sets: 3)

var calfRaises = Exercise(name: "Calf Raises", muscleGroups: ["calves"], reps: 15, sets: 4)

var bicepCurl = Exercise(name: "Bicep Curls", muscleGroups: ["bicep", "forearms"], reps: 10, sets: 3)

var tricepPullDown = Exercise(name: "Tricep Pull Down", muscleGroups: ["lateral-head", "medial-head", "long-head"], reps: 12, sets: 3)

var pullUp = Exercise(name: "Pull Ups", muscleGroups: ["laterals", "biceps", "traps"], reps: 10, sets: 3)

var rows = Exercise(name: "Rows", muscleGroups: ["laterals", "traps", "rhomboids"], reps: 10, sets: 3)

var legExtensions = Exercise(name: "Leg Extensions", muscleGroups: ["quads"], reps: 12, sets: 3)

var hamstringCurls = Exercise(name: "Hamstring Extensions", muscleGroups: ["hamstrings"], reps: 10, sets: 3)

// Workout regimen structure
struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func workoutPlan() {
    if dayOfWeek != "Thursday" {
      print("Today is \(dayOfWeek) and the plan is to:")
      for exercise in self.exercises {
        print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name).")
        for muscle in exercise.muscleGroups {
          print("This will work your \(muscle)")
        }
        print("That's a total of \(exercise.totalReps) \(exercise.name).")
      }
    } else {
    print("\(dayOfWeek) is a rest day. Enjoy your rest!")
    }
  } 
}

// Workout regimen instances
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp, benchPress, shoulderPress, tricepPushDown])

var tuesdayRegimen = Regimen(dayOfWeek: "Tuesday", exercises: [bicepCurl, tricepPullDown, rows, pullUp])

var wednesdayRegimen = Regimen(dayOfWeek: "Wednesday", exercises: [legExtensions, calfRaises, hamstringCurls, squats])

var thursdayRegimen = Regimen(dayOfWeek: "Thursday", exercises: [])

var fridayRegimen = Regimen(dayOfWeek: "Friday", exercises: [pushUp, benchPress, shoulderPress, tricepPushDown])

var saturdayRegimen = Regimen(dayOfWeek: "Saturday", exercises: [bicepCurl, tricepPullDown, rows, pullUp])

var sundayRegimen = Regimen(dayOfWeek: "Sunday", exercises: [legExtensions, calfRaises, hamstringCurls, squats])

// mondayRegimen.workoutPlan()
// tuesdayRegimen.workoutPlan()
// wednesdayRegimen.workoutPlan()
// thursdayRegimen.workoutPlan()
// fridayRegimen.workoutPlan()
// saturdayRegimen.workoutPlan()
// sundayRegimen.workoutPlan()
