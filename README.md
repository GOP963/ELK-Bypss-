# 💀 EDR-Bypss
Bypass Elastic Agent in the Credential Access tactic

# Mini PowerShell Loader – Educational Scenario

👋 **Welcome!**  

This project demonstrates an educational, step‑by‑step PowerShell in‑memory execution scenario.  
The goal is to simulate a realistic attacker workflow while keeping each stage simple, clear, and verifiable.

---

## Scenario Overview

In real environments:

- PowerShell is often restricted or monitored.
- Security products block direct credential dumping attempts.
- Attackers must use indirect and stealthy techniques.

---

This project demonstrates a **multi‑stage approach** to bypass such protections in a controlled, research‑oriented scenario.
Step 1: Constrained Language Mode Bypass

The first challenge is Constrained Language Mode in PowerShell.

In many enterprise environments:

PowerShell runs in a restricted mode.

Access to .NET objects is limited.

Advanced scripting techniques are blocked.

In this step:

We bypass Constrained Language mode.

This allows the script to use .NET objects.

Enables in‑memory execution techniques.

Why this step matters

In real‑world attacks:

PowerShell is rarely fully open.

Attackers must first escape restricted environments.

Without this step, later stages would fail.

📚 For more technical details about this technique, refer to:
https://www.ired.team/offensive-security/code-execution/powershell-constrained-language-mode-bypass
---

## Step 2: LOLBIN Execution via `forfiles`

After gaining full PowerShell capabilities, we move to a **LOLBIN (Living Off The Land Binary)** technique.

We use the legitimate Windows binary:
```powershell
forfiles /p "C:\Program Files\Elastic\Endpoint" /m elastic-endpoint.exe /c "powershell -command C:\Temp\system32.ps1"
```
