# 💀 EDR-Bypss
Bypass Elastic Agent In the credential Access tactic

# Mini PowerShell Loader – Educational Scenario

👋 **Welcome!**  

This project demonstrates an advanced PowerShell in-memory execution scenario, designed for educational purposes and security research.

---

## Step 1: Constrained Language Bypass

In the first step, we tackled **Constrained Language PowerShell**, a restricted mode often encountered in real-world scenarios.  

- Constrained Language restricts access to many .NET objects and cmdlets.  
- By bypassing this mode, we gain the ability to execute more advanced scripts and manipulate memory objects.

---

## Step 2: Using a LOLBIN for Elastic Endpoint Snapshot

Next, we leveraged a **LOLBIN technique**. In this case, we used the legitimate `forfiles` binary, a method previously observed in operations by **APT28**, to execute our script:

```powershell
forfiles /p "C:\Program Files\Elastic\Endpoint" /m elastic-endpoint.exe /c "powershell -command C:\Temp\system32.ps1"

