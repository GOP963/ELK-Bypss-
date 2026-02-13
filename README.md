# 💀 ELK-Bypss
Bypass Elastic Agent In the credential Access tactic


# Mini PowerShell Loader

**Mini PowerShell Loader** is a small educational project that demonstrates how to load and execute scripts directly in memory using PowerShell. It focuses on in-memory execution techniques, Base64 decoding, GZip decompression, and dynamic code execution.

---

## Features

- Load Base64-encoded and GZip-compressed scripts in memory
- Decode and execute scripts without writing to disk
- Educational example to understand in-memory execution
- Utilizes `System.IO.MemoryStream` and `System.IO.Compression.GZipStream`
- Demonstrates simple dynamic script execution with `Invoke-Expression`
- Shows basic string manipulation and character arithmetic for decoding

---

## How to Run

1. Open PowerShell with appropriate permissions.  
2. Navigate to the project directory:  
```powershell
cd C:\Temp
```
---
```powershell
.\loader.ps1
```
