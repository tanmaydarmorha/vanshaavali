# Vanshaavali Database Documentation

This document outlines the structure of the `Person` object and the relationships used in the vanshaavali database.

## Person Node

The `Person` node represents an individual in the vanshaavali, containing essential details about each person.

### Person Node Structure

```cypher
(:Person {
  name: string,
  dateOfBirth: date,
  phoneNumber: string,
  gender: enum,
  dateOfDeath: date,
  gotra: string,
  village: string,
  createDateTime: datetime,
  lastUpdateDateTime: datetime
})
```

### Properties of the Person Node:

- **name**: The full name of the person (e.g., "John Darmorha").
- **dateOfBirth**: The birth date of the person (e.g., "1940-01-01").
- **phoneNumber**: The phone number of the person (e.g., "123-456-7890").
- **gender**: The gender of the person. This is an enum with possible values such as "Male" or "Female".
- **dateOfDeath**: The date of death of the person, if applicable (e.g., "2020-03-10"). It can be `null` for living individuals.
- **gotra**: The gotra (clan) of the person (e.g., "Vashishtha").
- **village**: The village or hometown of the person (e.g., "Springfield").
- **createDateTime**: The date and time when the record was created.
- **lastUpdateDateTime**: The date and time when the record was last updated.

---

## Relationships

### 1. **MARRIED_TO**
   - This relationship connects two `Person` nodes that are married.
   
   ```cypher
   (person1)-[:MARRIED_TO]->(person2)
   ```

   - **Description**: Represents the marital relationship between two individuals.
   - **Example**: John Darmorha is married to Alice Darmorha.

   - **Direction**: No inherent direction. Can be represented in both directions, as marriage is mutual.

---

### 2. **PARENT_OF**
   - This relationship connects a parent `Person` node to a child `Person` node.
   
   ```cypher
   (parent)-[:PARENT_OF]->(child)
   ```

   - **Description**: Defines the parent-child relationship between two individuals.
   - **Example**: John Darmorha and Alice Darmorha are parents of Paul Darmorha, Mary Darmorha, and Peter Darmorha.

   - **Direction**: Parent → Child.

---

## Example Queries

Here are some example queries to retrieve the relationships:

### a. Retrieve All People and Their Parents

```cypher
MATCH (parent)-[:PARENT_OF]->(child)
RETURN parent.name AS Parent, child.name AS Child
```

### b. Find All Marriages

```cypher
MATCH (a)-[:MARRIED_TO]->(b)
RETURN a.name AS Spouse1, b.name AS Spouse2
```

### c. Retrieve Siblings

```cypher
MATCH (a)-[:SIBLINGS]->(b)
RETURN a.name AS Sibling1, b.name AS Sibling2
```

---

### Conclusion

This vanshaavali database consists of `Person` nodes representing individuals and several relationships that define the family structure, including **MARRIED_TO** and **PARENT_OF**. Additional relationships like **SON_OF**, **DAUGHTER_OF**, and **SIBLINGS** can be added as needed.