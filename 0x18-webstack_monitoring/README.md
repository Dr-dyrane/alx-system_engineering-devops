# Webstack Monitoring (0x18-webstack_monitoring)

Monitoring your web servers and applications is vital to ensure their performance, reliability, and security. This project is all about setting up monitoring for your web stack using Datadog. 📈🔍

## 📋 Outline
This project is divided into three tasks:

1. **Task 0: Sign up for Datadog and Install datadog-agent** 🖋
   - Sign up for Datadog.
   - Install the Datadog agent on one of your web servers.
   - Create an application key.
   - Provide your API and application keys in your Intranet user profile.
   - Verify that your server is visible in Datadog.

2. **Task 1: Monitor Some Metrics** 📊
   - Set up monitors to track read and write requests to your server.

3. **Task 2: Create a Dashboard** 📺
   - Create a custom dashboard in Datadog.
   - Add widgets to visualize different metrics.
   - Retrieve the dashboard ID using Datadog's API.

## 🚀 Getting Started
To complete this project, you'll need access to the following resources:
- Two web servers: `web-01` and `web-02`.
- Load balancer: `lb-01`.

Ensure you have the necessary access and permissions to perform the tasks.

## 📝 Implementation Steps

### Task 0: Sign up for Datadog and Install Datadog Agent
1. Visit [Datadog](https://www.datadoghq.com/) and sign up for a free account.
2. During the sign-up, choose statistics from your current stack for Datadog to monitor.
3. Follow the instructions provided on the website to install the Datadog agent on `web-01`.
4. Create an application key in your Datadog account.
5. Copy your Datadog API key and application key.
6. Update your Intranet user profile with the API and application keys.
7. Confirm that your server `web-01` is visible in Datadog.

### Task 1: Monitor Some Metrics
1. Set up a monitor to track the number of read requests issued to the device per second.
2. Set up a monitor to track the number of write requests issued to the device per second.

### Task 2: Create a Dashboard
1. Create a new dashboard in Datadog.
2. Add at least four widgets to the dashboard to visualize different metrics.
3. Save the dashboard and retrieve the dashboard ID using Datadog's API.

## 🧪 Testing
Test your monitoring setup by observing how the monitors behave when your servers experience read and write requests.

## 📦 Files
- `0-sign_up_datadog`: Bash script for signing up and installing the Datadog agent.
- `1-monitor_system_metrics`: Bash script for setting up system metric monitors.
- `2-setup_datadog`: Answer file with the dashboard ID created in Task 2.

## ⚙️ Usage
1. Run the provided Bash scripts to complete the tasks.
2. Ensure you have the Datadog API key and application key in your Intranet user profile.

## 📚 Resources
- [What is server monitoring](https://www.datadoghq.com/blog/what-is-server-monitoring/)
- [What is application monitoring](https://www.datadoghq.com/blog/what-is-application-monitoring/)
- [System monitoring by Google](https://cloud.google.com/products/operations)
- [Nginx logging and monitoring](https://www.nginx.com/blog/nginx-log-monitoring-and-logging-best-practices/)

## ✍️ Author
- [Alexander Udeogaranya](https://github.com/Dr-dyrane/alx-system_engineering-devops/0x18-webstack_monitoring)

## 📄 License
This project is licensed under the ALX School license.

---

**Note:** Please adhere to the project requirements and guidelines. Plagiarism is strictly prohibited and may result in removal from the program.

🌟 Happy Monitoring! 🌟