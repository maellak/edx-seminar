Packer templates for building base VM boxes.
Original repo: <https://github.com/shiguredo/packer-templates>

## Usage

### Installing Packer

Download and unzip the latest packer from <http://www.packer.io/downloads.html>.

### Running Packer


```bash
cd ubuntu-12.04/
packer build --only=virtualbox-iso template.json
```

### Supported packer versions

This templates was tested using a packer `0.7.5`.
