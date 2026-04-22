#!/bin/bash

syft /github/workspace/requirements.txt -o cyclonedx-json=sbom.json
grype sbom.json --by-cve --fail-on critical
