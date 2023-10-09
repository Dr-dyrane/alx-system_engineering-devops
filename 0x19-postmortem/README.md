# My First Postmortem

**Author:**
- Alexander Udeogaranya
- GitHub Username: [Dr-dyrane](https://github.com/Dr-dyrane)

## Table of Contents
- [Introduction](#introduction)
- [Project Overview](#project-overview)
- [Tasks](#tasks)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction
This project is focused on creating a detailed postmortem document for software incidents. A postmortem is an essential tool in the tech industry to analyze and learn from system failures or outages. It helps in understanding the root causes, their impact, and implementing corrective and preventive measures to ensure such incidents don't recur.

## Project Overview
In this project, we will be creating a postmortem document that adheres to specific guidelines and requirements. The document will be written in English and cover the following aspects:
- Issue Summary
- Timeline
- Root Cause and Resolution
- Corrective and Preventative Measures

## Tasks
1. **My first postmortem**
   - Write a postmortem document based on a real or fictitious software outage.
   - Ensure the document contains an issue summary, timeline, root cause, resolution, and corrective/preventative measures.
   - Keep the document brief and straight to the point, between 400 to 600 words.
   
   [Read Postmortem](#postmortem-database-server-outage)

2. **Make people want to read your postmortem (Advanced)**
   - Enhance the readability and attractiveness of your postmortem document.
   - Consider adding elements like humor, diagrams, or any creative elements to engage the audience.

## Requirements
To successfully complete this project, make sure to adhere to the following requirements:
- The postmortem document must be written in English.
- Follow the specified format for the postmortem, as outlined in the project description.
- Ensure that your postmortem is concise, between 400 to 600 words.
- If attempting the advanced task, focus on making the document engaging and appealing to readers.

## Usage
To use this project, follow these steps:
1. Clone the repository to your local machine.
2. Create a new branch for your work.
3. Complete the required tasks as outlined in the project description.
4. Commit and push your changes to your branch.
5. Create a pull request for review.

## Contributing
Contributions to this project are welcome. If you have suggestions for improvements or new features, please open an issue or submit a pull request.

## License
This project is licensed under the [ALX License](LICENSE), © 2023 ALX. All rights reserved.

---

## Postmortem: Database Server Outage

**Author:** Alexander Udeogaranya

### Issue Summary

**Duration:**

- Start Time: October 12, 2023, 3:30 PM (UTC)
- End Time: October 12, 2023, 4:45 PM (UTC)

**Impact:**

- The outage affected our primary website, resulting in a complete unavailability for approximately 75% of our users.
- Users experienced HTTP 500 errors and inability to access the website.
- Some users reported data inconsistencies upon service restoration.

### Root Cause

The root cause of the outage was identified as a critical failure of our primary database server. The server experienced a sudden hardware failure, leading to the unavailability of critical data.

### Timeline

**Issue Detection:**

- Time: October 12, 2023, 3:30 PM (UTC)
- Detection Method: Automated monitoring system triggered alerts for database unavailability.

**Actions Taken:**

- The DevOps team was immediately notified and began investigating the issue.
- Initially, there were assumptions of a network issue or software bug.
- Several system logs were analyzed, but no conclusive evidence was found.
- The incident was escalated to the Database Administration team.

**Misleading Investigation Paths:**

- The initial assumption of a network issue caused a delay in identifying the root cause.
- Some time was spent investigating application code, which was not related to the issue.
- There was a brief concern regarding a potential cyberattack, which was ruled out.

**Escalation:**

- The incident was escalated to the Database Administration team after 15 minutes of initial investigation.

**Resolution:**

- The database server was restarted, which temporarily resolved the issue.
- Detailed hardware diagnostics revealed a failing hard drive, which was replaced.
- Data consistency was restored from backups, and service was fully recovered by 4:45 PM (UTC).

### Root Cause and Resolution

**Root Cause Detail:**

The database server outage was caused by a hardware failure, specifically a failing hard drive. This led to data unavailability and service disruption.

**Resolution Detail:**

The immediate resolution involved restarting the server to regain access to the database. After identifying the failing hard drive, it was replaced with a new one. Data consistency was ensured by restoring the database from backups. Preventive measures were taken to monitor server hardware health proactively.

### Corrective and Preventative Measures

**Improvements/Fixes:**

- Implement proactive hardware monitoring to detect failures before they cause service disruptions.
- Enhance the incident response plan to include clear steps for hardware-related issues.
- Review and update backup and recovery procedures to ensure minimal data loss.

**Tasks to Address the Issue:**

- Implement

 automated server hardware health checks.
- Enhance documentation for incident response procedures.
- Schedule regular hardware maintenance and inspections.

1. **Flowchart:**

   ```
   Postmortem Flowchart:

   🚀 Start --> 🚨 Issue Detected --> 📢 DevOps Team Notified --> 🤔 Assumed Network Issue --> 📈 Escalation to DB Team
                  |              |                  |                        |
                  |              |                  |                        |
                  |              |                  |                        |
                  v              v                  v                        v
    🔄 Restart Server --> 💡 Hardware Diagnostics --> 🛠️ Identify Failing Hard Drive --> 📥 Data Restoration
                          |                |
                          |                |
                          v                v
               ✅ Data Consistency Restored   🛡️ Preventive Measures Implemented
   ```

2. **Status Diagram:**

   ```
   Status:

   [💥 Website Unavailable] --> [🚫 HTTP 500 Errors] --> [🤯 Data Inconsistencies]
     (75% of Users)        (User Experience)     (Data Quality)

   ```

3. **Checklist Diagram:**

   ```
   Checklist Diagram:

   - [✅] Issue Detected
   - [✅] DevOps Team Notified
   - [✅] Assumed Network Issue
   - [❌] Cyberattack Concern Ruled Out
   - [✅] Database Server Restarted
   - [✅] Failing Hard Drive Replaced
   - [✅] Data Consistency Restored
   - [✅] Preventive Measures Implemented

   ```

4. **Hardware Health Diagram:**

   ```
   Hardware Health:

   [✅✅✅✅✅✅✅✅✅✅✅✅✅] Normal
   [✅✅✅✅✅✅✅✅✅✅✅✅] Warning
   [✅✅✅✅✅✅✅] Critical

   ```
