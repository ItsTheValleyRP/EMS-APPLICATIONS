# The Valley — EMS Applications

Standalone EMS recruitment portal for The Valley Roleplay.

## Website
After GitHub Pages is enabled, the site will be available at:
https://itsthevalleyrp.github.io/EMS-APPLICATIONS/

## Setup
1. In GitHub, open **Settings → Pages**.
2. Set the source to **Deploy from a branch**.
3. Select branch **main** and folder **/(root)**, then save.
4. In the Supabase SQL Editor, run `supabase/ems_form_setup.sql` to register the EMS form definition.
5. In Supabase Authentication → URL Configuration, add the EMS Pages URL to the allowed redirect URLs if it is not already covered by an existing wildcard or exact entry.

## Access
- Applicants sign in with Discord, submit an application, and view their own status.
- EMS review access is scoped to the EMS department. The EMS Department Head and Command Team should be assigned the corresponding EMS roles.
- The portal uses the shared Valley application tables and RPCs. It does not create or delete existing applications, roles, or audit records.

The frontend uses the Supabase publishable key only. Never place a service-role key in browser code.
