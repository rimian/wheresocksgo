## <a name="resource-sock">Socks</a>

Stability: `prototype`

Where socks go

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **id** | *uuid* | unique identifier of sock | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **name** | *string* | unique name of sock | `"example"` |

### Socks List

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
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example"
  }
]
```


