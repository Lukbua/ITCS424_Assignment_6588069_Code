# Flutter App Assignment - README

## Student Information  
**Name:** Phanthira Phansen  
**Student ID:** 6588069  
**Section:** 2

---

## Pages Implemented

### 1. Page Name: AppliedJob  
**Description:**  
This page appears after the user applies for a job. It acts as a confirmation and also recommends more job opportunities to the user. It shows a list of jobs with relevant details like title, company, salary, location, and tags. Users can also bookmark jobs from this page.

---

### 2. Page Name: Profile  
**Description:**  
This page allows the user to view and edit their profile. Users can enter their name, username, email, bio, and a link. The profile includes a toggle to switch between view mode and edit mode. Profile information is updated using state management.

---

## Features and Widgets Used

- `MaterialApp.router` for navigation using `go_router`
- `AppBar` with custom top navigation bar
- `ListView`, `Column`, `Row` for layout structuring
- `Expanded` used within rows to allow widgets to take up the remaining space efficiently.
- `Container`, `Padding`, `SizedBox`, `EdgeInsets` for spacing and layout control
- `Text`, `TextField`, `TextButton`, `ElevatedButton`, `IconButton` for UI
- `CircleAvatar` and `Image.asset` for profile picture and job thumbnails
- `Icons` from Material Icons
- `StatefulWidget` and `setState()` for dynamic state updates
- Custom reusable widgets (e.g., `TopNavigationBar`, `ProfileForm`, `ProfileDisplay`)

---

## Known Issues or Limitations

- No persistent storage: Profile data and bookmark status reset when the app is restarted.
- The “More” button in the job card has no implemented functionality yet.
- Some hardcoded content (e.g., location is always "Bangkok, Thailand").
- No form validation on Profile inputs.

---

## Reflection

**1. What did you find most challenging about this project?**  
Implementing state changes for editable profile fields and managing the flow of data between the edit and display components was challenging. Also, designing a clean and responsive UI with Flutter’s widget tree required thoughtful structuring.

**2. Which widgets or design elements are you most proud of using?**  
The custom navigation bar and the dynamic profile page with toggleable edit mode are the parts I'm most proud of. I also like how the job cards are styled with tags and icons.

**3. What would you add or improve with more time?**  
- Implement persistent data storage (e.g., using a local database).
- Add validation to the profile form.
- Improve job card interactivity and implement the “More” button.
- Make the layout more responsive and adaptive to different screen sizes.
---

