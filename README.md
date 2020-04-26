# syslog-ng
Syslog-ng docker image based on alpine linux optimized for syslog docker logging driver.

# How to start

```
docker-compose up -d
```

# How to use

Add to your container in docker-compose.yml
```
    logging:
        driver: syslog
        options:
            syslog-address: unix:///var/run/syslog-ng/syslog-ng.sock
            tag: "{{.Name}}"
```
