class Datacontainer {
    var secret: String = "";
    var description: String = "";

    init() { }

    func getSecret() -> String {
        return self.secret;
    }

    func setSecret(secret: String) {
        self.secret = secret;
    }

    func getDescription() -> String {
        return self.description;
    }

    func setDescription(description: String) {
        self.description = description;
    }
}

func source() -> String {
    return "I'm bad";
}

func sink(sunk: String) {
    print(sunk);
}

let d1 = Datacontainer();
d1.setDescription(description: "abc");
d1.setSecret(secret: source());
sink(sunk: d1.getSecret()); // Should be detected
sink(sunk: d1.getDescription()); // Should not be detected