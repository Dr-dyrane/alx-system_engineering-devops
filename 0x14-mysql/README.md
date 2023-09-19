# MySQL Backup Script

## Table of Contents
- [Description](#description)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Options](#options)
- [Example](#example)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

## Description

The MySQL Backup Script is a Bash tool that simplifies the process of creating backups for MySQL databases. This script generates a MySQL dump containing all databases, compresses it into a tar.gz archive, and applies a timestamp to the archive's filename for easy tracking. It is designed to enhance your database's disaster recovery strategy and data preservation.

## Requirements

- Linux system (Ubuntu 16.04 LTS recommended)
- MySQL server installed and configured
- Root access or sufficient permissions to create backups
- Basic knowledge of Bash scripting and MySQL

## Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/Dr-dyrane/alx-system_engineering-deveops/0x14-mysql
   ```

2. Navigate to the script's directory:

   ```bash
   cd 0x14-mysql
   ```

3. Make the script executable:

   ```bash
   chmod +x 5-mysql_backup
   ```

## Usage

You can execute the script by running the following command:

```bash
./5-mysql_backup [OPTIONS] PASSWORD
```

- `[OPTIONS]`: Optional script options (see [Options](#options)).
- `PASSWORD`: The MySQL root password required for database access.

## Options

- `-o, --output DIRECTORY`: Specify the directory where the backup should be saved. By default, the backup will be saved in the script's directory.
- `-h, --help`: Display help information about the script.

## Example

To create a backup with the default options, run:

```bash
./5-mysql_backup mysecretpassword
```

This command will generate a backup.sql file and a tar.gz archive with a timestamp in the filename.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, please submit an issue or a pull request on the [GitHub repository](https://github.com/Dr-dyrane/alx-system_engineering-deveops/0x14-mysql).

## License

This project is licensed under the [MIT License](LICENSE).

## Author

- [Alexander Udeogaranya](https://github.com/Dr-dyrane)