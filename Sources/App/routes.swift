import Vapor

func routes(_ router: Application) throws {
    router.get { req in
        return "It works!"
    }

    router.get("hello") { req -> String in
        return "Hello, Cyan!"
    }
    
    router.get("greet", ":name"){ request -> String in
        let name = request.parameters.get("name")!
        return "Hello \(name)"
    }
}
 
