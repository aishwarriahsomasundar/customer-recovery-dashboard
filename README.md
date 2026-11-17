# Customer Recovery Dashboard

*FINDING DATA LOSS IN ACCOUNT ACCESS TICKETS*

## THE QUESTION I INVESTIGATED

If a support agent looked only for tickets tagged Data loss, which customers would they overlook? To explore that question, I relied on Excel, Power BI and PostgreSQL. I aimed to create a brief list of tickets that a support agent could open first, along with an explanation of why each ticket was included.

## HOW I NARROWED THE REVIEW

I began with 8,469 customer support tickets. Out of these, 2,819 were open, and 692 of those open tickets carried critical priority. I limited the review to open, critical technical issues filed under two subjects: Data loss (10 tickets) and Account access (8 tickets).

I went through all 18 descriptions, logged a review decision in Excel, and flagged five tickets as Review First. Using SQL in DBeaver, I verified the dashboard totals and reproduced the selection of 18 tickets.

## WHAT THE DESCRIPTIONS REVEALED

Of the five tickets I flagged, four customers reported data loss. Just one of those four tickets was filed under Data loss. The remaining three were filed under Account access. The fifth flagged ticket described a password reset that failed.

In this review, searching only the Data loss subject would have missed three of the four flagged data-loss reports. Reading the descriptions gave me a reason to place those tickets in the queue.

## HOW TO USE THE DASHBOARD

Complaint Trends. Select a ticket status to see the count by ticket type. With Open selected, technical issue is the largest category, with 602 tickets.

<img width="293" height="236" alt="image" src="https://github.com/user-attachments/assets/f1b9297a-382e-45ab-8551-914a79994af6" />


Action Queue. Use the ticket ID to locate each of the five flagged cases. The review decision explains why it was selected for follow-up.

<img width="206" height="120" alt="image" src="https://github.com/user-attachments/assets/367125ac-d61f-4d9a-9ce9-c774dee62472" />


## WHAT I WOULD DO NEXT

I would test a simple review step with the support team. When a critical account-access ticket mentions missing files or lost data, the reviewer would check whether it also needs data-recovery support. I would then repeat the review on a larger set of tickets to see how often the same issue occurs.
