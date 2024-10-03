

# Oracle Database Project README

## Overview

This README outlines the steps taken to create and manage Pluggable Databases (PDBs) within an Oracle Database environment. The project involves creating multiple PDBs for various activities, allowing students to organize and store their work effectively.

## Prerequisites

- **Oracle Database** (version 21c) installed on Windows: Ensure that the Oracle Database software is properly installed on your system.
- **SQL*Plus client** to execute SQL commands: This tool is essential for interacting with the database via command-line interface.

## Tasks Completed

### 1. Create a Pluggable Database (PDB)

- **Task Description:** Created a PDB named `plsql_class2024db` for class activities to store work during the course.
- **Purpose:** This PDB serves as a dedicated environment for students to manage their projects and data related to the course.

**SQL Command Used:**

```sql
CREATE PLUGGABLE DATABASE plsql_class2024db
ADMIN USER di_plsqlauca IDENTIFIED BY nivid123
ROLES = (DBA)
FILE_NAME_CONVERT = ('C:\app\Divin\product\21c\oradata\XE\pdbseed', 'C:\app\Divin\product\21c\oradata\XE\plsql_class2024db');
```

- **Explanation:** This command creates a new PDB named `plsql_class2024db` with an administrative user `di_plsqlauca`. The `FILE_NAME_CONVERT` parameter specifies the conversion of the seed database files to the new PDB location.

 2. Create and Delete a Temporary PDB

- **Task Description:** Created a temporary PDB named `di_to_delete_pdb` for testing purposes and deleted it afterward.
- **Purpose:** This exercise allows for testing PDB management commands and understanding the lifecycle of a PDB.

**SQL Commands Used:**

1. Create the PDB:

```sql
CREATE PLUGGABLE DATABASE di_to_delete_pdb
ADMIN USER admin IDENTIFIED BY nivid123
ROLES = (DBA)
FILE_NAME_CONVERT = ('C:\app\Divin\product\21c\oradata\XE\pdbseed', 'C:\app\Divin\product\21c\oradata\XE\di_to_delete_pdb');
```

2. Open the PDB:

```sql
ALTER PLUGGABLE DATABASE di_to_delete_pdb OPEN;
```

3. Close the PDB:

```sql
ALTER PLUGGABLE DATABASE di_to_delete_pdb CLOSE IMMEDIATE;
```

4. Drop the PDB:

```sql
DROP PLUGGABLE DATABASE di_to_delete_pdb INCLUDING DATAFILES;
```

- **Explanation:** These commands demonstrate the creation, opening, closing, and deletion of a temporary PDB. The final command includes the `INCLUDING DATAFILES` clause, which ensures that all associated data files are removed when the PDB is dropped.

### 3. Configure Oracle Enterprise Manager (OEM)

- **Task Description:** Started the Oracle Enterprise Manager Database Console and accessed it via the web interface.
- **Purpose:** OEM provides a web-based interface for managing and monitoring the Oracle Database environment.

**Steps Taken:**

1. Opened Command Prompt as Administrator.
2. Navigated to the Oracle Home bin directory.
3. Started the DB Console:

```cmd
emctl start dbconsole
```

4. Verified the status of the DB Console:

```cmd
emctl status dbconsole
```

5. Accessed Oracle Enterprise Manager at:

```url
https://localhost:5500/em
```

- **Explanation:** These steps outline how to start and access Oracle Enterprise Manager, allowing users to monitor the database's performance, manage users, and perform various administrative tasks through a graphical interface.

## Conclusion

This project involved the creation and management of Pluggable Databases in Oracle Database, as well as the configuration of Oracle Enterprise Manager for effective database monitoring and management. These exercises provide practical experience in managing database environments, which is crucial for database administration roles.

For any further details or assistance, please contact me.

## License

This project is licensed under the MIT License. You can freely use, copy, modify, and distribute this software, but please include a copy of this license in any distributions.

---
