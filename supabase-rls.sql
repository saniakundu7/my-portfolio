
-- site_content table for editable portfolio sections
CREATE TABLE IF NOT EXISTS site_content (
  section text PRIMARY KEY,
  content text,
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE site_content ENABLE ROW LEVEL SECURITY;

GRANT SELECT ON site_content TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON site_content TO authenticated;

DROP POLICY IF EXISTS "Public read site content" ON site_content;
DROP POLICY IF EXISTS "Auth write site content" ON site_content;

CREATE POLICY "Public read site content" ON site_content
  FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "Auth write site content" ON site_content
  FOR ALL TO authenticated USING (true) WITH CHECK (true);
