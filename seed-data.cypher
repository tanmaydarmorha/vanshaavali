// 1st Generation: John and Alice
CREATE (john:Person {
  name: "John Darmorha", 
  dateOfBirth: "1940-01-01", 
  phoneNumber: "123-456-7890", 
  gender: "Male", 
  dateOfDeath: "2020-03-10", 
  gotra: "Vashishtha", 
  village: "Springfield", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

CREATE (alice:Person {
  name: "Alice Darmorha", 
  dateOfBirth: "1945-05-15", 
  phoneNumber: "555-1234", 
  gender: "Female", 
  dateOfDeath: null, 
  gotra: "Kashyap", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

// Marriage relationship
CREATE (john)-[:MARRIED_TO]->(alice)

// 2nd Generation: Paul, Mary and Peter (Children of John and Alice)
CREATE (paul:Person {
  name: "Paul Darmorha", 
  dateOfBirth: "1965-02-20", 
  phoneNumber: "555-5678", 
  gender: "Male", 
  dateOfDeath: null, 
  gotra: "Vashishtha", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

CREATE (mary:Person {
  name: "Mary Darmorha", 
  dateOfBirth: "1967-07-25", 
  phoneNumber: "555-8765", 
  gender: "Female", 
  dateOfDeath: null, 
  gotra: "Vashishtha", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

CREATE (peter:Person {
  name: "Peter Darmorha", 
  dateOfBirth: "1970-11-12", 
  phoneNumber: "555-4321", 
  gender: "Male", 
  dateOfDeath: null, 
  gotra: "Vashishtha", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

// Parent-child relationships
CREATE (john)-[:PARENT_OF]->(paul)
CREATE (alice)-[:PARENT_OF]->(paul)

CREATE (john)-[:PARENT_OF]->(mary)
CREATE (alice)-[:PARENT_OF]->(mary)

CREATE (john)-[:PARENT_OF]->(peter)
CREATE (alice)-[:PARENT_OF]->(peter)

// 3rd Generation: John Jr, Mary Jr, and Peter Jr (Children of Paul, Mary, and Peter)
CREATE (johnJr:Person {
  name: "John Jr. Darmorha", 
  dateOfBirth: "1990-01-10", 
  phoneNumber: "555-0000", 
  gender: "Male", 
  dateOfDeath: null, 
  gotra: "Vashishtha", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

CREATE (maryJr:Person {
  name: "Mary Jr. Darmorha", 
  dateOfBirth: "1992-04-14", 
  phoneNumber: "555-1111", 
  gender: "Female", 
  dateOfDeath: null, 
  gotra: "Vashishtha", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

CREATE (peterJr:Person {
  name: "Peter Jr. Darmorha", 
  dateOfBirth: "1995-08-22", 
  phoneNumber: "555-2222", 
  gender: "Male", 
  dateOfDeath: null, 
  gotra: "Vashishtha", 
  village: "Lakeside", 
  createDateTime: datetime(), 
  lastUpdateDateTime: datetime()
})

// Parent-child relationships for 3rd generation
CREATE (paul)-[:PARENT_OF]->(johnJr)
CREATE (mary)-[:PARENT_OF]->(maryJr)
CREATE (peter)-[:PARENT_OF]->(peterJr)
