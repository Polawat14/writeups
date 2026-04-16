# Bug Bounty Report — [Vulnerability Title]

> **Program:** HackerOne / Bugcrowd / Private  
> **Target:** `*.target.com`  
> **Severity:** Critical / High / Medium / Low  
> **Status:** `Submitted` / `Triaged` / `Resolved` / `Duplicate`  
> **Date:** YYYY-MM-DD  
> **Bounty:** $0 — $???

---

## Summary

One paragraph. What is the bug, where is it, and what's the impact?

---

## Vulnerability Details

| | |
|---|---|
| **Type** | XSS / SSRF / IDOR / etc. |
| **Endpoint** | `GET /api/user?id=123` |
| **Parameter** | `id` |
| **Auth required** | Yes / No |

---

## Steps to Reproduce

1. Login to `https://target.com`
2. Navigate to `...`
3. Intercept request with Burp
4. Modify parameter `id` to `../admin`
5. Observe the response contains...

---

## PoC

```http
GET /api/user?id=../admin HTTP/1.1
Host: target.com
Cookie: session=...
```

**Response:**
```json
{
  "username": "admin",
  "email": "admin@target.com"
}
```

---

## Impact

Explain business impact. Who can exploit this? What data/system is at risk?

---

## CVSS Score

```
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N
Score: 9.1 (Critical)
```

---

## Remediation

How to fix. Be specific.

---

## Timeline

| Date | Event |
|------|-------|
| YYYY-MM-DD | Discovered |
| YYYY-MM-DD | Submitted to program |
| YYYY-MM-DD | Triaged |
| YYYY-MM-DD | Resolved |

---

## References

-
