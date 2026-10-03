
# Log Archive Tool (CLI)

A Bash-based DevOps project that creates timestamped,
gzip-compressed archives of log directories.

## Features

- Accepts a log directory as a command-line argument
- Validates that the directory exists
- Creates timestamped `.tar.gz` archives
- Stores generated archives in a dedicated directory
- Uses Linux utilities such as `tar`, `gzip`, and `date`

## Prerequisites

- Linux or WSL (Ubuntu)
- Bash
- tar
- gzip

## Project Structure

    log-archive-tool/
    ├── archive.sh
    ├── README.md
    ├── .gitignore
    ├── archives/
    └── test-logs/

## Usage

Make the script executable:

    chmod +x archive.sh

Run the script:

    ./archive.sh test-logs

Verify the archive:

    tar -tzf archives/test-logs_YYYY-MM-DD_HHMMSS.tar.gz

## Concepts Practised

- Bash scripting
- Linux command-line utilities
- File and directory handling
- Timestamp-based naming
- Archive creation and verification
- Git and GitHub

## Future Improvements

- Log every archive run
- Handle invalid paths gracefully
- Add automated test cases
- Add configurable archive destinations
