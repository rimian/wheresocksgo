## <a name="resource-sock">Sock</a>

Stability: `prototype`

Where socks go

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when sock was created | `"2015-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of sock | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **name** | *string* | unique name of sock | `"example"` |
| **updated_at** | *date-time* | when sock was updated | `"2015-01-01T12:00:00Z"` |

### Sock List

List existing socks.

```
GET /socks
```


#### Curl Example

```bash
$ curl -n https://wheresocksgo.herokuapp.com/api/socks \
  -H "Accept: application/vnd.wheresocksgo+json; version=1"
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


