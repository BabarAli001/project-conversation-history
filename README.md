# Project Conversation History

## Getting Started

### Developed With
- Ruby Version - 3.16
- PostgreSQL ( 13 or higher)
- Rails 7.2.2.1
- SCSS

### Setup
1. Clone the repository
   ```bash
   git clone [repository-url]
   cd [repository-name]
   ```

2. Install dependencies
   ```bash
   bundle install
   ```

3. Database setup
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Start the application
   ```bash
   bin/dev
   ```
   This will start both the Rails server and any other processes defined in your Procfile.

The application should now be running at `http://localhost:3000`

## Project Definition / Questions
- **What defines a "project"?**
  A project should have a title, description, and creation date.

## Status Management
- **What are the possible status values for a project?**
  Projects can be:
  - Backlog
  - In Progress
  - On Hold
  - Completed

## User Management
- **Do we need user authentication? Should comments be associated with users?**
  - Yes, we need basic user authentication.
  - Comments and status changes should track who made them.

## UI/UX Requirements
- **How should the conversation history be displayed?**
  - Display in reverse chronological order (newest first).
  - Show both comments and status changes in a single timeline.

## Comment Features
- **Do comments need any special formatting (Markdown, etc.)?**
  - Keep it simple for now—plain text comments are
