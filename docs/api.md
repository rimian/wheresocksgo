## <a name="resource-sock">Socks</a>

Stability: `prototype`

Where socks go

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **body** | *string* | body describing of the sock | `"example"` |
| **id** | *uuid* | unique identifier of sock | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **latitude** | *number* | latitude of sock coordinates | `42.0` |
| **longitude** | *number* | longitude of sock coordinates | `42.0` |
| **title** | *string* | title of the sock | `"example"` |

### Socks List

List existing socks.

```
GET /api/socks
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
    "title": "example",
    "body": "example",
    "latitude": 42.0,
    "longitude": 42.0
  }
]
```


