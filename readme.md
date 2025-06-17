# ERD Auth Flow

```mermaid
erDiagram
  direction LR
  users }o--|| user_roles : has
  user_roles ||--o{ roles   : receives
  users{
    int id
    string name
    string password
    string email
  }
  user_roles{
    int id
    int id_role
    int id_user
  }
  roles {
    int id
    string name
  }
```
