# DevOps Engineer Technical Test - Solution

## Problem 1: Deployment Configuration

### Instructions

1. Ensure you have Docker installed on an Ubuntu 22.04 system.
2. Save the provided `script.sh` file to your local machine.
3. Make the script executable:
    ```bash
    chmod +x script.sh
    ```
4. Run the script:
    ```bash
    ./script.sh
    ```

### Explanation

- The script finds all Docker containers labeled `com.a2odev.app=sigma`.
- It then updates each container by setting a memory limit of 64MB and a restart policy of "on-failure:5".
