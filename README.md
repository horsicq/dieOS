# 🕵️‍♂️ dieOS – Detect It Easy OS

> **A highly specialized, zero-footprint Live OS built exclusively for rapid binary analysis, reverse engineering, and incident response.**

---

## 🎯 The Mission

When responding to an incident or analyzing potentially hostile binaries, the environment is critical. You need a clean, isolated, and immutable workspace. 

**dieOS** is a meticulously crafted, minimal Linux Live-ISO that brings the immense analytical power of **Detect It Easy (DIE)** directly to bare metal. Bootable from any USB drive, it loads entirely into RAM and provides an immediate, tactical terminal environment to dissect, identify, and triage files without compromising the host system.

---

## ⚡ Core Capabilities

* **Zero-Footprint Execution:** Runs 100% in volatile memory (RAM). Once the system is powered down, all traces vanish. Absolute host integrity is maintained.
* **Native Forensic Readiness:** Ships with tools like `ntfs-3g` pre-configured, allowing safe, write-blocked, and execution-prevented mounting of suspect drives.
* **Powered by Detect-It-Easy:** The absolute latest `diec` console binary and the massive `Detect-It-Easy` signature database are baked directly into the system root.
* **Distraction-Free Environment:** No GUI, no bloatware, no telemetry. Just a raw, high-performance root shell optimized for speed and efficiency.
* **Universal Boot Support:** Hybrid ISO architecture ensures seamless booting on both legacy BIOS and modern UEFI systems.

---