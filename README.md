# openssl-build

build scripts for [openssl](https://github.com/openssl/openssl)

## Installation

### Swift Package Manager

```
https://github.com/mpvkit/openssl-build.git
```

## How to build

```bash
swift run --package-path scripts
```

or 

```bash
# deployment platform: macos,ios,tvos,maccatalyst
swift run --package-path scripts build platforms=ios,macos
```