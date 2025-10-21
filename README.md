# Homebrew Tap for EZNet

This is the official Homebrew tap for [EZNet](https://github.com/batr7434/eznet), a comprehensive network testing CLI tool.

## Installation

```bash
# Add the tap
brew tap batr7434/eznet

# Install eznet
brew install eznet
```

## One-liner Installation

```bash
brew install batr7434/eznet/eznet
```

## About EZNet

EZNet is a comprehensive network testing CLI tool that automatically performs various network tests without requiring users to remember specific commands like `ping`, `nc`, `curl`, or `telnet`.

### Features

- **DNS Resolution**: IPv4 & IPv6 address resolution
- **TCP Connection**: Test connectivity to specific ports  
- **HTTP/HTTPS Check**: Retrieve headers and response information
- **ICMP Ping**: Test basic connectivity (when possible)
- **Port Range Scanning**: Scan multiple ports in a range
- **Common Ports Scanning**: Scan 115+ frequently used ports
- **SSL/TLS Certificate Analysis**: Comprehensive certificate security assessment
- **Rich Output**: Beautiful, colored terminal output
- **JSON Export**: Machine-readable output format

### Usage

```bash
# Basic website test
eznet -H google.com

# Test specific port
eznet -H google.com -p 443

# Port range scanning  
eznet -H example.com -p 80-90

# Common ports scan
eznet -H example.com --common-ports

# SSL certificate analysis
eznet -H github.com -p 443 --ssl-check
```

## Links

- **Main Repository**: https://github.com/batr7434/eznet
- **Documentation**: https://github.com/batr7434/eznet#readme
- **Issues**: https://github.com/batr7434/eznet/issues