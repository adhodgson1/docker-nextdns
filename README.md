# docker-nextdns

Stupidly simple Docker container for NextDNS CLI

The idea behind this container is I can run a simple NextDNS proxy on my LAN via the Synology Docker package without having to SSH onto the NAS. Docker tags will match the upstream [releases](https://github.com/nextdns/nextdns/releases)

## Environment Variables

| variable | Description |
| --- | --- |
| NEXTDNS_ID | the ID of the NextDNS configuration you want to use, this is generated on the NextDNS website |
| NEXTDNS_ARGUMENTS | Arguments you want to add to the running NextDNS command when the container starts |

## Todo

- Create actions to build and push container on upstream release.
- Look at splitting commonly  used arguments into separate environment variables.
- Build out the entrypoint script to add more hooks as required.
