# oss-audit-22BCE11224
**Open Source Software Audit** | VITyarthi | OSS NGMC Course

---

## Student Information

| Field | Details |
|---|---|
| **Name** | Stanley Richard |
| **Roll Number** | 22BCE11224 |
| **Slot** | A13 |
| **Date of Submission** | 02/04/2026 |

---

## Chosen Software

**Mozilla Firefox** — free, open-source web browser developed by the Mozilla Corporation known for its focus on privacy, security, and customization



---

## Repository Structure
```
oss-audit-24BOE10016/
├── README.md
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_permission_auditor.sh
├── script4_log_analyzer.sh
└── script5_manifesto_generator.sh
```

---

## Scripts Overview

### Script 1 — System Identity Report
**File:** `script1_system_identity.sh`  
**Description:** Displays a system welcome screen showing the Linux distribution name, kernel version, current logged-in user, home directory, system uptime, current date/time, and the open-source license covering the OS.  
**Concepts Used:** Variables, `echo`, command substitution (`$()`), output formatting.

---

### Script 2 — FOSS Package Inspector
**File:** `script2_package_inspector.sh`  
**Description:** Checks whether the chosen software package is installed on the system, retrieves its version and metadata, and uses a `case` statement to print a short philosophical description of its purpose.  
**Concepts Used:** `if-then-else`, `case` statement, `rpm -qi` / `dpkg -l`, pipe with `grep`.

---

### Script 3 — Disk and Permission Auditor
**File:** `script3_disk_permission_auditor.sh`  
**Description:** Loops through a list of important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports disk usage and owner/permission details for each. Also checks if the chosen software's config directory exists.  
**Concepts Used:** `for` loop, `df`, `ls -ld`, `awk`, `cut`.

---

### Script 4 — Log File Analyzer
**File:** `script4_log_analyzer.sh`  
**Description:** Reads a log file line by line, counts occurrences of a specified keyword (default: `error`), and prints a summary. Accepts the log file path and keyword as command-line arguments.  
**Concepts Used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`).

---

### Script 5 — Open Source Manifesto Generator
**File:** `script5_manifesto_generator.sh`  
**Description:** Interactively asks the user three questions and generates a personalised open-source philosophy statement, saving the output to a `.txt` file named after the current user.  
**Concepts Used:** `read` for user input, string concatenation, file writing with `>` and `>>`, `date` command.

---

## How to Run the Scripts

### Prerequisites

- A Linux system (Ubuntu/Debian or RHEL/CentOS based)
- Bash shell (`bash --version` to verify)
- The chosen software package installed (for Script 2)

### Step 1 — Clone the Repository
```bash
git clone https://github.com/[your-username]/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]
```

### Step 2 — Make All Scripts Executable
```bash
chmod +x *.sh
```

### Step 3 — Run Each Script

**Script 1 — System Identity Report**
```bash
./script1_system_identity.sh
```

**Script 2 — FOSS Package Inspector**
```bash
./script2_package_inspector.sh
```

**Script 3 — Disk and Permission Auditor**
```bash
./script3_disk_permission_auditor.sh
```

**Script 4 — Log File Analyzer**
```bash
# Basic usage (default keyword: 'error')
./script4_log_analyzer.sh /var/log/syslog

# With a custom keyword
./script4_log_analyzer.sh /var/log/syslog WARNING
```

**Script 5 — Open Source Manifesto Generator**
```bash
./script5_manifesto_generator.sh
# Follow the on-screen prompts to generate your manifesto
```

---

## Dependencies

| Script | Dependencies | Install Command |
|---|---|---|
| Script 1 | `uname`, `uptime`, `whoami` | Pre-installed on all Linux systems |
| Script 2 | `rpm` or `dpkg`, `grep` | Pre-installed on all Linux systems |
| Script 3 | `du`, `ls`, `awk`, `cut` | Pre-installed on all Linux systems |
| Script 4 | `grep`, `tail` | Pre-installed on all Linux systems |
| Script 5 | `date`, `cat` | Pre-installed on all Linux systems |

> All scripts are written in standard Bash and have no external dependencies beyond a base Linux installation.

---

## License

This project was submitted as part of the **Open Source Software (OSS NGMC)** course at VIT. All shell scripts and written content are original work by the student listed above.

---

*Submitted via the VITyarthi portal as part of The Open Source Audit Capstone Project.*
