# sd-loadbalance nginx load balancing configuration

This is a simple nginx configuration to load balance two applications running on `localhost:7860` and `localhost:7861`. The configuration uses the default round-robin load balancing method, where each server in the upstream group is used in a sequential manner. This config assumes two automatic111 sd instances exist.

## Configuration Details

The Nginx configuration file contains the following directives:

- `upstream`: Defines a group of servers to be load balanced.
- `server`: Lists the IP addresses and port numbers of the servers to be included in the group.
- `listen`: Specifies the port number and IP address to listen on.
- `location`: Defines the URL path to be proxied to the upstream servers.
- `proxy_pass`: Specifies the upstream group to be used for load balancing.
- `proxy_set_header`: Sets the HTTP headers to be sent to the upstream servers.

## Usage

Use within docker is quite simple. See the example dockerfile.

For baremetal simply install nginx and paste the contents of the configuration - restart Nginx.

After the configuration is applied, Nginx will load balance incoming requests between the two applications running on `localhost:7860` and `localhost:7861`.

