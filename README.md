# Self-hosted Repository

This repository contains configuration files for everything that runs on my home server.

Feel free to look around. If you decide to adopt anything, however, note that
no effort has been made to make the setup portable in any way. In addition,
security best practices have not necessarily been observed.

## Background

I host my workloads on Unraid with containers being managed by Portainer. Portainer is the
only container that is not deployed by compose.

The first 16 IP addresses of the 192.168.0.1/24 range are reserved for
containers running in host mode and virtual machines. Notable among them are:

* the internet router on 192.168.0.1.
* a pihole container on 192.168.0.2 running a DHCP server (the router is lame
  and does not allow you to point to a custom DNS server).
* the Unraid box on 192.168.0.1.
* the rest of the home devices run on 192.168.0.[17-255] and are configured by
  the pihole.

Note that this setup suffers from the limitation that there is no fallback DNS
server should the pihole die.
