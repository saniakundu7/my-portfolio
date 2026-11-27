-- Enable Row Level Security on enquiries table
ALTER TABLE enquiries ENABLE ROW LEVEL SECURITY;

-- Policy: Allow public (anon) to insert enquiries from the portfolio form
CREATE POLICY "Allow public insert" ON enquiries
  FOR INSERT TO anon
  WITH CHECK (true);

-- Policy: Allow authenticated users (admin) to view all enquiries
CREATE POLICY "Allow authenticated select" ON enquiries
  FOR SELECT TO authenticated
  USING (true);

-- Policy: Allow authenticated users (admin) to update enquiries
CREATE POLICY "Allow authenticated update" ON enquiries
  FOR UPDATE TO authenticated
  USING (true)
  WITH CHECK (true);

-- Policy: Allow authenticated users (admin) to delete enquiries
CREATE POLICY "Allow authenticated delete" ON enquiries
  FOR DELETE TO authenticated
  USING (true);