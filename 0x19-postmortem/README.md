# Postmortem Report
## 504 Error while accessing a given URL

**Summary:**
On June 10, 2024, at midnight EEST, the server experienced an outage resulting in a 504 error for users attempting to access the website. The server operates on a LAMP stack.

**Timeline:**
- **00:00 EEST** - Users encountered a 504 error when accessing the website.
- **00:05 EEST** - Verified that Apache and MySQL services were running.
- **00:10 EEST** - Identified that the website was not loading correctly despite server and database functionality.
- **00:12 EEST** - Successfully restarted Apache, confirming a status of 200 OK when curling the website.
- **00:18 EEST** - Investigated error logs to pinpoint the root cause.
- **00:25 EEST** - Discovered Apache shutdowns prematurely in /var/log, with PHP error logs missing.
- **00:30 EEST** - Discovered PHP error logging was disabled in php.ini; enabled error logging.
- **00:32 EEST** - Restarted Apache to monitor PHP error logs.
- **00:36 EEST** - PHP error logs revealed a typo in a file name within wp-settings.php, causing incorrect loading and premature server shutdowns.
- **00:38 EEST** - Corrected the file name typo and restarted Apache.
- **00:40 EEST** - Server resumed normal operation; website loaded correctly.

**Root Cause and Resolution:**
The issue stemmed from a misspelled file name referenced in wp-settings.php, triggering a 500 error when attempting to curl the server. Initial investigations were hampered by disabled PHP error logging, which masked crucial diagnostic information. Once error logging was enabled and logs reviewed, the typo was identified. To prevent recurrence across multiple servers, a Puppet code deployment swiftly corrected all instances of the misspelled file extension.

**Corrective and Preventive Measures:**
1. Ensure all servers and websites have error logging enabled to promptly diagnose issues.
2. Implement thorough local testing before deploying on multi-server setups to preemptively address errors, reducing downtime in production environments.
