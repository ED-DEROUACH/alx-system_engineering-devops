# **Postmortem**

*Learning how to write an Incident Report, also referred to as a Postmortem. This postmortem follows the guidelines used closely by Google engineers to file reports. The report is made up of five parts: an issue summary, a timeline, root cause analysis, resolution and recovery, and lastly, corrective and preventative measures. Let's review each of these parts in detail.*

---

## **Issue Summary**

* *Short Summary:* This incident report details a recent service outage that affected our system, leading to a significant number of user requests resulting in 500 errors. The impact was substantial, with peak error rates reaching 100%.

* *Duration:* The incident occurred from `[start time]` to `[end time]` in `[timezone]`.

* *Impact:* Most user requests during this period resulted in 500 errors, severely impacting user experience.

* *Root Cause:* `[Provide a concise statement outlining the root cause of the incident.]`

---

## **Timeline**

* *Timezone:* `[Specify the timezone for all timestamps below.]`

* *Outage Duration:* The outage persisted from `[start time]` to `[end time]`.

* *When Outage Began:* `[Specify the exact time the outage started.]`

* *When Staff Was Notified:* `[Specify when the staff was officially notified of the incident.]`

* *Actions, Events, …:* `[Chronologically list the actions taken, events, and any relevant information during the outage.]`

* *When Service Was Restored:* `[Specify the exact time the service was fully restored.]`

---

## **Root Cause**

* *Detailed Explanation:* `[Provide a comprehensive and detailed explanation of the events leading to the incident. Avoid sugarcoating and present an accurate account.]`

---

## **Resolution and Recovery**

* *Detailed Explanation of Actions Taken:* `[Provide a step-by-step explanation of the actions taken to resolve the issue, including timestamps.]`

---

## **Corrective and Preventative Measures**

* *Itemized List of Preventative Measures:* 
   1. `[Specify the first measure to prevent a recurrence.]`
   2. `[Specify the second measure to prevent a recurrence.]`
   3. `[Continue in this manner for all relevant preventative measures.]`

* *Improvement Strategies:* `[Discuss how we can improve our response and handling of similar incidents in the future.]`

**What Can We Do Better Next Time?** `[Reflect on lessons learned and suggest improvements for future incident response and prevention.]`

---

