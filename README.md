# Sania Kundu – Portfolio

Personal portfolio: AI, digital marketing and web projects (Disha Institute, Brain Buzz).

## Files

- `index.html` – public portfolio. Loads saved content from Supabase `site_content`.
- `admin.html` – admin panel: login, content editor, enquiry inbox.
- `supabase-rls.sql` – database tables, security policies and starter content.

## Setup

1. Open `supabase-rls.sql` in the Supabase SQL Editor and run it.
2. In Supabase, go to Authentication → Users and create the admin user with email `saniakundu7@gmail.com` (or change the email in `supabase-rls.sql`).
3. Open `admin.html`, sign in, edit a section and press Save.
4. Open `index.html` to see the changes.

Enquiries from the website contact form are stored in the `enquiries` table. The admin panel can search, edit, delete and export them as CSV.

## Deploy

GitHub Pages: Settings → Pages → Deploy from a branch → `main` → `/ (root)`.
