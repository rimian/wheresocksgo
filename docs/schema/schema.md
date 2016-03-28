## <a name="resource-sock">Sock</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when sock was created | `"2015-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of sock | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **name** | *string* | unique name of sock | `"example"` |
| **updated_at** | *date-time* | when sock was updated | `"2015-01-01T12:00:00Z"` |

### Sock Create

Create a new sock.

```
POST /socks
```


#### Curl Example

```bash
$ curl -n -X POST https://wheresocksgo.herokuapp.com/api/socks \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Sock Delete

Delete an existing sock.

```
DELETE /socks/{sock_id_or_name}
```


#### Curl Example

```bash
$ curl -n -X DELETE https://wheresocksgo.herokuapp.com/api/socks/$SOCK_ID_OR_NAME \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Sock Info

Info for existing sock.

```
GET /socks/{sock_id_or_name}
```


#### Curl Example

```bash
$ curl -n https://wheresocksgo.herokuapp.com/api/socks/$SOCK_ID_OR_NAME
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Sock List

List existing socks.

```
GET /socks
```


#### Curl Example

```bash
$ curl -n https://wheresocksgo.herokuapp.com/api/socks
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
[
  {
    "created_at": "2015-01-01T12:00:00Z",
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "updated_at": "2015-01-01T12:00:00Z"
  }
]
```

### Sock Update

Update an existing sock.

```
PATCH /socks/{sock_id_or_name}
```


#### Curl Example

```bash
$ curl -n -X PATCH https://wheresocksgo.herokuapp.com/api/socks/$SOCK_ID_OR_NAME \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```


