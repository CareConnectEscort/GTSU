# CareConnect HK - Interactive Demo

A comprehensive interactive demo of the CareConnect Hong Kong elderly escort service platform, featuring parallel role-based dashboards for Patients, Escorts, and Guardians.

## 🌐 Live Demo

### **[🚀 VIEW LIVE DEMO](https://careconnectescort.github.io/GTSU/index_demo.html)**

**Direct URL:** `https://careconnectescort.github.io/GTSU/index_demo.html`

> **Note:** If you see a 404 error, GitHub Pages needs to be activated first (see below).

### Activating GitHub Pages (One-time setup)

**For repository administrators:**

1. **Go to:** [Repository Settings > Pages](https://github.com/CareConnectEscort/GTSU/settings/pages)
2. **Under "Build and deployment":**
   - Source: **Deploy from a branch**
   - Branch: **`isem`** ← Select this
   - Folder: **`/ (root)`** ← Keep this
   - Click **"Save"**
3. **Wait 2-3 minutes** for GitHub to deploy
4. **Refresh the settings page** - you'll see: "Your site is live at..."
5. **Demo is now accessible** at the URL above

Once activated, the demo will be publicly accessible to anyone with the link.

## 📱 What's Inside

### Interactive Demo Features
- **Desktop-friendly layout** with demo navigation sidebar
- **Mobile app preview** (430px viewport) in the center
- **Quick role switching** between Patient, Escort, and Guardian
- **Auto-fill forms** (click once to fill, twice to submit)
- **Mock data** pre-populated for instant testing
- **No backend required** - fully self-contained HTML file

### Three Parallel Role Dashboards

#### 🩺 Patient Dashboard
- **Profile Card** → Medical Portal (disability level, medical notes, addresses, HA Go)
- **Active Appointment** (today's escort session)
- **7-Day Unmatched Alert** (increase wage if no escort found)
- **Upcoming Requests & Records**
- **HA Go Integration** + Book Escort CTA
- **Bottom Nav**: Home | Book | Profile

#### 🤝 Escort Dashboard
- **Profile Card** → Escort Information (qualifications, experience, languages, certifications)
- **Active Session** (today's escort job)
- **Upcoming Calendar** (interactive)
- **Priority Jobs** (weighted ranking with 24-hour hard rule)
- **Bottom Nav**: Home | Jobs | Profile

#### 👨‍👩‍👧 Guardian Dashboard
- **Profile Card** + **Multi-Patient Switcher** (manage 2+ patients)
- **7-Day Unmatched Alert** (for patient's appointments)
- **Active Appointment** (track patient's session)
- **Upcoming Requests & Records**
- **HA Go Integration** + Book Escort CTA
- **Bottom Nav**: Home | Book | Switch Patient | Profile

### Active Appointment System (5-Stage Workflow)

**Role-Specific Views:**

**Patient View** (Passive):
- Shows 4-digit verification code (0384) for escort to verify
- "Confirm Escort Has Picked Me Up" button
- "Confirm Appointment Has Ended" button
- Read-only progress tracker

**Guardian View** (Observer):
- Read-only progress tracker (no code, no buttons)
- Escort Summary Report (when Stage 5 complete)
- Emergency button

**Escort View** (Active 5-Stage Workflow):
1. **Stage 1**: Verify 4-digit pickup code (with auto-fill)
2. **Stage 2**: Upload hospital arrival photo
3. **Stage 3**: Upload appointment proof photo
4. **Stage 4**: Upload patient settled photo
5. **Stage 5**: Complete 3-question summary log (5-hour countdown)
   - What was done during appointment
   - Important doctor/nurse notes
   - Future to-dos and follow-up

### Key Features

#### 🎯 Weighted Priority Job Ranking (Escort)
- **24-Hour Hard Rule**: Unpaired appointments <24h pinned to top
- **Weighted Matching**: Location • Disability Level • Wage • Urgency (1:1:1:1)
- Real-time filtering and search

#### 📋 Comprehensive Information Pages
- **Patient Medical Portal**: Disability level, medical conditions, addresses, HA Go linking
- **Escort Information**: Experience, languages, patient levels (Lv 1-4), specialties, certifications
- Both support auto-fill for quick demo testing

#### 🔄 Guardian Multi-Patient Management
- Switch between multiple patients (e.g., Mrs. Chan P-0384, Mr. Chan P-2244)
- All content dynamically updates based on selected patient
- Bottom nav includes quick patient switcher

#### ⚠️ 7-Day Unmatched Alert System
- Alert banner when appointment <7 days has no escort
- "Increase Hourly Wage" action button (+$20/hr)
- Appears for both Patient and Guardian roles

## 🚀 Quick Start

### Option 1: Open Locally
```bash
# Clone the repository
git clone https://github.com/CareConnectEscort/GTSU.git
cd GTSU
git checkout isem

# Open in browser
open index_demo.html
# or double-click index_demo.html in Finder
```

### Option 2: Run Local Server
```bash
cd GTSU
python3 -m http.server 8080

# Open in browser:
# http://localhost:8080/index_demo.html
```

### Option 3: Deploy to Netlify (Instant)
1. Go to https://app.netlify.com/drop
2. Drag `index_demo.html` onto the page
3. Get instant live URL
4. Share with anyone

### Option 4: Enable GitHub Pages (Permanent)
1. Go to Repository Settings > Pages
2. Branch: `isem` | Folder: `/` (root)
3. Save and wait 2-3 minutes
4. Access at: `https://careconnectescort.github.io/GTSU/index_demo.html`

## 📂 File Structure

```
GTSU/
├── index.html           # Original prototype (1,899 lines)
├── index_demo.html      # Interactive demo version (2,039 lines)
├── README.md            # This file
└── .git/                # Git repository
```

## 🎨 Tech Stack

- **HTML5** - Single-file architecture
- **Tailwind CSS** (via CDN) - Utility-first styling
- **Font Awesome 6.5.1** - Icon library
- **Google Fonts** - DM Sans, Playfair Display
- **Vanilla JavaScript** - No framework dependencies
- **Self-contained** - All code in one HTML file

## 🎯 Demo Navigation

### Using the Sidebar
The demo sidebar (left side, outside mobile frame) provides quick access:

**Accounts:**
- Load Patient Dashboard (Mrs. Chan P-0384)
- Load Escort Dashboard (Mary Chan E-1088)
- Load Guardian Dashboard (David Chan G-5512)

**Screens:**
- Login / Register
- Role-specific home screens
- Medical Portal / Escort Information
- Active Appointment
- Jobs (Escort only)

**Actions:**
- Reset Demo State (clear all auto-fills)

### Auto-Fill Pattern
All forms support **click-once-fill, click-twice-submit**:
1. Click submit button → Form fills with mock data
2. Click submit button again → Form submits

This allows rapid demo testing without manual data entry.

## 📊 Mock Data

Pre-populated demo accounts:

**Patient**: Mrs. Chan
- Code: P-0384
- Level: Lv 2 — Cane / Walking aids
- Medical: Cardiology patient
- Address: 123 Pok Fu Lam Road, HKU Area
- HA Go: HA-CH-0384

**Escort**: Mary Chan
- Code: E-1088
- Experience: Experienced (3-5 years)
- Languages: Cantonese, English
- Can handle: Lv 1-3 patients
- Specialties: Cardiology
- Certifications: First Aid, CPR

**Guardian**: David Chan
- Code: G-5512
- Relationship: Son/Daughter
- Managing: Mrs. Chan (P-0384), Mr. Chan (P-2244)

## 🔧 Development

### Branch Structure
- `main` - Original prototype
- `isem` - Interactive demo version (current)

### Making Changes
```bash
git checkout isem
# Edit index_demo.html
git add index_demo.html
git commit -m "Description of changes"
git push origin isem
```

### Testing Locally
```bash
# Start local server
python3 -m http.server 8080

# Open browser
open http://localhost:8080/index_demo.html
```

## 📝 Commits

Latest commits on `isem` branch:
- `13a3dbf` - Align all 3 role home pages & fix Active Appointment views
- `ca59ac2` - Fix Active Appointment: Separate role-specific views
- `40d3388` - Refactor CareConnect HK into interactive demo with comprehensive features

## 🤝 Contributing

This is a demo prototype. For production deployment:
1. Split into separate components/pages
2. Add backend API integration
3. Implement real authentication
4. Add database for persistent storage
5. Implement actual photo upload and watermarking
6. Add real-time notifications
7. Integrate with HA Go API

## 📄 License

[Add your license here]

## 👥 Credits

Developed by the CareConnect Team
Co-Authored-By: Claude Opus 4.7

---

**Questions?** Open an issue or check the [Wiki](../../wiki)
