SELECT COUNT(*) AS total_tickets
FROM public.customer_recovery_sql;
SELECT COUNT(*) AS open_tickets
FROM public.customer_recovery_sql
WHERE "Ticket Status" = 'Open';
SELECT "Ticket Type", COUNT(*) AS open_tickets
FROM public.customer_recovery_sql
WHERE "Ticket Status" = 'Open'
GROUP BY "Ticket Type"
ORDER BY open_tickets DESC;
SELECT COUNT(*) AS open_critical_tickets
FROM public.customer_recovery_sql
WHERE "Ticket Status" = 'Open'
  AND "Ticket Priority" = 'Critical';
SELECT "Ticket Subject", COUNT(*) AS ticket_count
FROM public.customer_recovery_sql
WHERE "Ticket Status" = 'Open'
  AND "Ticket Priority" = 'Critical'
  AND "Ticket Type" = 'Technical issue'
  AND "Ticket Subject" IN ('Data loss', 'Account access')
GROUP BY "Ticket Subject"
ORDER BY ticket_count DESC;
