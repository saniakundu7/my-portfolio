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

### Vercel (frontend)

1. Go to `vercel.com/new` and import the `saniakundu7/my-portfolio` repository.
2. Framework Preset: **Other**. Build Command: leave empty. Output Directory: `.`
3. Deploy. The site opens at `https://<project>.vercel.app` and the admin at `/admin.html`.

### Backend

Supabase is the backend (auth, database and enquiries), so no separate server is required. If a custom API is needed later, it can be added as a separate Render service.

### GitHub Pages

Settings → Pages → Deploy from a branch → `main` → `/ (root)`.
