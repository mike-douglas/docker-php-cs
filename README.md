# docker-php-cs

A simple docker container with just [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) for linting and fixing PHP code against defined coding standards.

## Usage

### Get help for PHP_CodeSniffer commands

```bash
docker run --rm mdouglas/php-cs phpcs --help
docker run --rm mdouglas/php-cs phpcbf --help
```

### Check current directory against PSR-12

```bash
docker run --rm -v ${PWD}:/app -t mdouglas/php-cs phpcs --standard=PSR12 .
```

### Fix a file's PSR-12 violations

```bash
docker run --rm -v ${PWD}:/app -t mdouglas/php-cs phpcbf --standard=PSR12 .
```
