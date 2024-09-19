# devops

Savantly DevOps tools - based on Geodesic

This image includes the tools required for Savantly supported devops tasks.

- Terragrunt
- Terraform (Open Tofu)
- kubectl
- helm
- aws-cli
- others...

# Prerequisites

- Docker
- WSL2 (Windows) or Linux/MacOS

## Quick Start

This will create an executable script in your local bin directory to launch the devops container.

```bash
# this will create an executable script to launch the devops container
docker run --rm savantly/devops:3.3.0-debian init | bash
```

Alternatively, you can copy the [devops](devops) script to your local bin directory and run it from there.

## Usage

```bash
# run the devops script to launch the devops container
devops
```

Once the shell has launched, run `assume-role` if you have more than one AWS account to switch between. This will set the AWS_PROFILE environment variable to the selected profile.

![screenshot](docs/launched.jpeg)

If you have more than one kubernetes cluster in your `kubeconfig`, you can switch between them using the `kubectx` command.
