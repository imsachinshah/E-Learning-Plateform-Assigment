# E-Learning Platform

## Overview
The E-Learning Platform is a web application that enables students to discover and enroll in courses and allows instructors to manage their course offerings. It includes features for course discovery, enrollment, management, and feedback.

---

## Features

### Student Features
1. **Course Discovery and Enrollment:**
   - Display all available courses on the home page as cards.
   - Each course card shows:
     - Thumbnail image
     - Title
     - Brief description
     - Available seats
     - Instructor name
   - Enroll in courses with available seats.

2. **Search and Filter:**
   - Search courses by:
     - Course name
     - Start date
     - Category/Subject
     - Instructor

3. **Detailed Course View:**
   - View detailed course information, including descriptions, schedules, and available seats.

4. **Feedback System:**
   - Students can:
     - Rate courses (5-star system).
     - Leave written reviews.
     - View average course ratings on course cards.
     - See detailed reviews on course pages.

---

### Instructor Features
1. **Course Management:**
   - Add new courses with:
     - Title
     - Description
     - Thumbnail image
     - Maximum capacity
     - Start and end dates
     - Schedule
     - Category/Subject

2. **Course Listing:**
   - View and manage courses added by the instructor.

---

## Technical Features

### Authentication & Authorization
- User registration and login.
- Role-based access control (Student or Instructor).
- Display logged-in username and logout functionality.

### Technologies Used
- **Backend:** Ruby on Rails
- **Frontend:** Bootstrap for styling
- **Database:** PostgreSQL
- **File Uploads:** Active Storage for managing course thumbnails
- **Authentication:** Devise gem for user management

---

## Installation and Setup

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd e-learning-platform
   ```

2. **Install Dependencies:**
   ```bash
   bundle install
   yarn install
   ```

3. **Setup the Database:**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Run the Server:**
   ```bash
   rails server
   ```
   Access the application at `http://localhost:3000`.

---

## Usage

1. **Register as a User:**
   - Register as a Student or Instructor during signup.

2. **For Students:**
   - Browse courses on the home page.
   - Search or filter courses as needed.
   - Enroll in courses with available seats.
   - Leave ratings and reviews for courses you’ve enrolled in.

3. **For Instructors:**
   - Add new courses using the course management page.
   - Manage existing courses.

---

## Project Structure

```
app/
├── controllers/       # Application controllers
├── models/            # Application models
├── views/             # Views for rendering UI
├── assets/            # Static files (CSS, JavaScript, Images)
└── helpers/           # View helpers
config/                # Application configurations
public/                # Public assets
```  


