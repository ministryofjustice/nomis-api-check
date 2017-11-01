## Examples

### Default

```
$ export NOMIS_API_BASE_URL=https://appgw.t3.nomis-api.hmpps.dsd.io/nomisapi/
$ export CLIENT_KEY="$(cat /.../client.key)"
$ export CLIENT_TOKEN="$(cat /.../nomis-api_jenkins_T3.token)"
$ ./nomis-api-check.rb
```

### Disable SSL verification

```
$ export DISABLE_SSL_VERIFY=true
...
```

### Access another URL path

```
$ export NOMIS_API_PATH=version
...
```

## Docker

### Build
```
$ docker build -t nomis-api-check .
```

### Usage
Pass variables above as Docker environment variables. Example:
```
$ docker run -e NOMIS_API_BASE_URL=https://appgw.t3.nomis-api.hmpps.dsd.io/nomisapi/ -e CLIENT_KEY="$(cat /.../client.key)" -e CLIENT_TOKEN="$(cat /.../client_t3.token)" nomis-api-check

```
