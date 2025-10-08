# Cybersecurity & Privacy Training - Combined Module

This folder contains the comprehensive Cybersecurity & Privacy Training that includes all six modules in a single, unified interface.

## Files in this folder:

- **`cybersecurity-privacy-training-combined.html`** - The main training interface with sidebar navigation
- **`imsmanifest.xml`** - SCORM manifest file for LMS compatibility
- **`create-scorm-package.sh`** - Script to build SCORM package
- **`cybersecurity-privacy-training-scorm.zip`** - Ready-to-upload SCORM package

## Training Modules Included:

1. **Phishing, Smishing & Vishing** (9 slides)
   - Email phishing simulator
   - SMS smishing simulator  
   - Voice vishing simulator
   - Real-world scenarios

2. **CEO & Executive Fraud** (6 slides)
   - Chat attack simulator with "Not Don Johnson"
   - Urgency timer challenge
   - Wire transfer scenarios

3. **Watering Hole Attacks** (9 slides)
   - Website infection simulator
   - URL detection game
   - Incident response simulation

4. **General Cybersecurity** (10 slides)
   - Ransomware response simulation
   - Device security scenarios
   - Password strength challenges
   - Software security assessment

5. **Privacy Awareness** (10 slides)
   - Data classification exercises
   - GDPR/CCPA compliance scenarios
   - Privacy breach simulations
   - Data handling best practices

6. **Secure Coding (OWASP Top 10)** (6 slides)
   - Interactive OWASP Top 10 explorer
   - SQL injection lab
   - Code review challenges
   - Dependency vulnerability scanner

## How to Use:

### For Web Deployment:
1. Open `cybersecurity-privacy-training-combined.html` in a browser
2. Navigate through modules using the sidebar
3. Progress is saved automatically in localStorage

### For LMS Deployment:
1. Upload `cybersecurity-privacy-training-scorm.zip` to your LMS
2. The LMS will track progress, scores, and completion

### To Rebuild SCORM Package:
```bash
cd cybersecurity-privacy-training-combined
./create-scorm-package.sh
```

## Features:

- **SCORM 1.2 Compliant** - Works with any standard LMS
- **Progress Tracking** - Saves progress for each module
- **Gamification** - XP points, achievements, levels
- **Interactive Simulators** - Hands-on practice with realistic scenarios
- **Responsive Design** - Works on desktop and tablet
- **No Time Limits** - Learn at your own pace
- **Comprehensive Coverage** - Social engineering, privacy, and secure coding

## Technical Notes:

- The combined interface uses iframes to load individual modules
- Modules communicate with parent frame via postMessage API
- SCORM tracking is handled at the parent level only
- Individual module SCORM is disabled when loaded in iframe

## File Structure:

All training modules are now contained within this folder:
- `phishing-smishing-vishing-training/enhanced-interactive-training.html`
- `ceo-executive-fraud-training/enhanced-interactive-training.html`
- `watering-hole-attacks-training/enhanced-interactive-training.html`
- `general-cybersecurity-training/enhanced-interactive-training.html`
- `privacy-awareness-training/enhanced-interactive-training.html`
- `secure-coding-training/enhanced-interactive-training.html`

This makes the combined training self-contained and portable.

## Training Statistics:

- **Total Slides**: 50 interactive slides
- **Estimated Time**: 90-120 minutes
- **Topics Covered**: 6 major cybersecurity domains
- **Interactive Elements**: 20+ simulations and exercises