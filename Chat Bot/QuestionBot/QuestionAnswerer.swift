struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        if question=="Hi" {
          return "Hi !"
        }
        // начинается с
        if question.hasPrefix("Hello"){
            return "Привет Ребзя"
        }
        //содержит
        if question.contains("ALEX"){
            return "Hey Mary"
        }
        // TODO: Write a response 
        return "Hello Alex!"
    }
}
