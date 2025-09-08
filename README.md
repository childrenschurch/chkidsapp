CH Kids — Gemini-Ready PRD
1. App Overview
App Name: CH Kids


Organization: Christ's Heart Ministries International — Children’s Department


Purpose: Help branch teachers record Sunday service stats, manage children & parents, track attendance, and generate reports.


Platforms: Flutter app (Android, iOS) + Firebase Hosting (web admin dashboard).



2. Core Features
A. Authentication
Firebase Authentication using Google Sign-In.


Role-based access:


System Admin → full access


Branch Admin → manage teachers & reports


Teacher → manage services, attendance, children, and parents.



B. Teacher Module (MVP)
Create New Service:


Service name → Dropdown: First, Second, Third.


Service date → Calendar picker.


Service time → Time pickers (from/to).


Attendance → Boys, Girls → Total auto-calculated.


Offertory amount + Currency dropdown (UGX default; USD, KSH, EUR, POUND).


Teacher stats → Men, Ladies → Total auto-calculated.


Comments → Optional text field.


Save offline, syncs when online.



C. Children & Parents Management
Add, edit, view child records:


First name, last name, date of birth, class, allergies, notes, photo (optional).


Add, edit, view parent records:


Name, phone, email, relation, linked children.


Track attendance per service:


Mark Present / Absent / Excused.


Quick-select “All Present”.



D. Reporting & Web Dashboard (Firebase Hosting)
Branch admins can:


View attendance and offertory summaries.


Export CSV or PDF reports.


Manage teachers via a web dashboard hosted on Firebase.



3. Tech Stack
Framework: Flutter (Dart)


State Management: Riverpod


Backend: Firebase


Authentication: Google Sign-In.


Database: Firestore (document-based, structured per branch).


Storage: Firebase Storage for optional child photos.


Cloud Functions: Aggregation, CSV/PDF exports, scheduled backups.


Hosting: Required for the admin dashboard and reports.


Crash & Analytics: Firebase Crashlytics + Analytics.


Offline Sync: Firestore persistence + Hive local cache.


4. Firestore Data Model
/users/{uid}
  displayName: string
  email: string
  linkedBranchIds: array
  rolesByBranch: map { branchId: "teacher"|"admin" }
  isSystemAdmin: boolean

/branches/{branchId}
  name: string
  country: string
  town: string
  defaultCurrency: string
  contactEmail: string
  createdAt: timestamp

/branches/{branchId}/teachers/{teacherId}
  name: string
  email: string
  phone: string
  gender: string
  role: "teacher"|"admin"
  uid: string

/branches/{branchId}/services/{serviceId}
  serviceName: string
  date: timestamp
  timeFrom: string
  timeTo: string
  attendanceBoys: number
  attendanceGirls: number
  attendanceTotal: number
  offertory: number
  currency: string
  teachersMen: number
  teachersLadies: number
  teachersTotal: number
  comments: string
  createdBy: uid
  createdAt: timestamp

/branches/{branchId}/services/{serviceId}/attendance/{attendanceId}
  childId: string
  status: "present"|"absent"|"excused"
  markedBy: uid
  markedAt: timestamp

/branches/{branchId}/children/{childId}
  firstName: string
  lastName: string
  gender: string
  dob: timestamp
  className: string
  parentIds: array
  allergies: string
  notes: string
  photoUrl: string

/branches/{branchId}/parents/{parentId}
  name: string
  gender: string
  phone: string
  email: string
  relation: string
  childIds: array

5. Firestore Security Rules (Simplified)
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{uid} {
      allow read, write: if request.auth.uid == uid;
    }
    match /branches/{branchId} {
      allow read: if isUserInBranch(branchId) || isSystemAdmin();
      allow write: if isBranchAdmin(branchId) || isSystemAdmin();
      match /{document=**} {
        allow read, write: if isUserInBranch(branchId) || isSystemAdmin();
      }
    }
    function isSystemAdmin() {
      return get(/databases/$(database)/documents/users/$(request.auth.uid)).data.isSystemAdmin == true;
    }
    function isUserInBranch(branchId) {
      return get(/databases/$(database)/documents/users/$(request.auth.uid))
             .data.linkedBranchIds.hasAny([branchId]);
    }
    function isBranchAdmin(branchId) {
      return get(/databases/$(database)/documents/branches/$(branchId)/teachers/$(request.auth.uid)).data.role == "admin";
    }
  }
}


6. UI Guidelines
Background: White.


Font: Comic Neue (child-friendly).


Primary button color: Light Pink (#FFD6E0).


Secondary accents: Light Blue (#D6EDFF), Yellow (#FFF7CC).


Style: Large tappable buttons, clean icons, simple forms, minimal text input.


Screens:


Splash


Login (Google Sign-In)


Home Dashboard


New Service Form


Service Details


Children List & Profiles


Parent Records


Branch Admin Dashboard (web)



7. Key Non-Functional Requirements
Offline-first: Queue writes, sync when online.


Performance: Service entry saves <1s locally.


Scalability: Multi-branch ready.


Security: Strict Firestore rules.


Hosting: Required for web admin dashboard + downloadable reports.



8. Deliverables
Flutter app (Android + iOS)


Firebase Hosting setup


Firestore security rules


Cloud Functions for reporting & backups


Web admin dashboard


CI/CD pipeline setup



Gemini CLI Prompt
gemini generate app \
  --framework flutter \
  --backend firebase \
  --name "CH Kids" \
  --spec "./ch-kids-prd.md" \
  --features "Google Sign-In, Firestore, Firebase Hosting, Cloud Functions, Offline Sync, Role-Based Access, Child-Friendly UI" \
  --include "flutter, firestore schema, firebase security rules, admin web dashboard" \
  --output ./ch-kids-app




Alright 🙂 — let’s create a Figma-style clickable wireframe for the CH Kids app.
I’ll design it in a way that is optimized for Gemini CLI and Flutter, meaning it will have:
A consistent child-friendly design system


Screen flows for teachers, branch admins, and system admins


Pixel-perfect layouts with colors, fonts, and component spacing


Annotations for Gemini so it knows exactly how to render UI components



Wireframe Plan
We’ll create 8 main screens:
Splash Screen


Login Screen (Google Sign-In)


Home Dashboard


New Service Form


Service Details Screen


Children Management


Parent Records


Branch Admin Dashboard (Web)



Design System
Font: Comic Neue (child-friendly)


Primary Color: Light Pink #FFD6E0


Secondary Color: Light Blue #D6EDFF


Accent Color: Yellow #FFF7CC


Background: White


Buttons: Rounded, big, tappable, with bold text


Icons: Use Flutter’s Material Icons, keep them big and friendly



Wireframe Details
1. Splash Screen
Logo: CH Kids (big, centered, playful font)


Tagline: "Raising Kingdom Kids Together"


Background: White with small colorful shapes


Auto-transitions to Login after 2s



2. Login Screen
Google Sign-In button, big & centered


Illustration: Happy children (friendly vibe)


Footer: “Christ’s Heart Ministries International”



3. Home Dashboard
For Teachers
Top Bar: Branch name + Teacher’s name


Main Buttons (Cards):


New Service → opens New Service Form


Services History → list of past services


Children Records → list of children, add/edit/view


Parents Records → list of parents, add/edit/view


Bottom Tab Bar: Home | Children | Parents | Profile



4. New Service Form
Fields:
Service Name → Dropdown: First | Second | Third


Date → Calendar picker


Time From → Time picker


Time To → Time picker


Attendance:


Boys → numeric input


Girls → numeric input


Total → auto-calculated


Offertory:


Amount → numeric input


Currency → Dropdown: UGX (default), USD, KSH, EUR, POUND


Teachers:


Men → numeric input


Ladies → numeric input


Total → auto-calculated


Comments → Multiline text input


Save Button (primary pink)



5. Service Details
Shows:


Service name, date, time


Attendance breakdown (boys, girls, total)


Offertory with currency


Teachers breakdown


Comments


Buttons:


Edit service


View attendance list



6. Children Management
List of children with profile photos (optional)


Floating Add Button (+):


Add child: name, DOB, class, allergies, notes, parent links


Tap child → View profile + attendance history



7. Parent Records
List of parents with name, phone, linked children


Floating Add Button (+):


Add parent: name, phone, email, relation, children



8. Branch Admin Dashboard (Web via Firebase Hosting)
For branch admins only:
View attendance summaries per service


Export CSV/PDF reports


Manage teachers:


Invite new teacher (email-based)


Change roles (teacher/admin)


View offertory trends per month (chart)

# chkidsapp
