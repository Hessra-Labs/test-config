# Hessra Authorization Service Configuration

This repository contains the GitOps-style configuration for the Hessra Authorization Service instance at test.hessra.net. It serves as a template for configuring other instances of the service.

## Repository Structure

- `clients.toml`: Defines client policies and access rules
- `resources.toml`: Defines the resource model and permissions
- `lint.sh`: Script for validating TOML configuration files
- `.github/workflows/lint.yml`: GitHub Actions workflow for automated linting

## Configuration Files

### clients.toml

This file defines the client policies and access rules for your authorization service. It includes:

- Client CAs to authenticate clients
- Client identifiers that can identify them uniquely by their X.509 cert
- The resources they are allowed to access

### resources.toml

This file defines the advanced resource types, like service chains.

## Usage

1. Clone this repository
2. Copy it to create your own configuration
3. Modify the TOML files according to your needs
4. Ensure all changes pass the linting checks

## Development

### Local Development

To validate your configuration locally:

```bash
# Install dependencies
pip install tomlq

# Run the lint script
./lint.sh
```

### Automated Checks

This repository uses GitHub Actions to automatically validate configuration changes:

- Runs on every push to main
- Runs on pull requests
- Validates TOML syntax and structure

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Ensure the linting checks pass
5. Submit a pull request

## License

This configuration template is licensed under the terms of the included LICENSE file.
