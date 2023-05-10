import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "restdemo",
	id: "restdemo-8e049af4-6a43-4e01-9530-90c14a69f5e2"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
