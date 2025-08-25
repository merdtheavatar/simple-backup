# Simple Backup
simple_backup.sh is a script that allows you to back up MySQL and PostgreSQL databases using the command line. The backup is performed by including the current date and time of the script execution.

## How to use
For the MySQL backup to work without issues, you first need to create the .my.cnf file in the home directory. Then,add the following content to the file.

1. Crate file and add the following lignes
```sh
sudo vim ~/.my.ini
```

```sh
[client]
password=your_password
```

2. Give the necessary permissions to the file.

```sh
sudo chmod 600 ~/.my.cnf
```
## Author

Merdi Kandi [kandimerdi@gmail.com](mailto:kandimerdi@gmail.com) 

## Contribution
Contributions are welcome! If you’d like to help improve this script, feel free to reach out

## License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.
You are free to use, modify, and distribute this script, provided that the original author is credited.
No warranty is provided; use at your own risk.

