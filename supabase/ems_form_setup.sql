-- THE VALLEY | EMS APPLICATION FORM
-- Safe additive/upsert: changes only the EMS form definition.
-- Does not delete applications, roles, audit records, or other department forms.

insert into public.valley_application_forms
  (department, title, description, questions, is_open, updated_at)
values
  ('ems',
   'EMS Application',
   'Apply to join Emergency Medical Services. Help the community through calm, professional, and compassionate emergency response.',
   '[{"key":"character_name","label":"What is your full in-city name?","type":"text","required":true},{"key":"discord_name","label":"What is your Discord username?","type":"text","required":true},{"key":"age","label":"How old are you?","type":"text","required":true},{"key":"experience","label":"Do you have any previous EMS, medical, or emergency response experience? If so, explain where and for how long.","type":"textarea","required":true},{"key":"why_ems","label":"Why do you want to join Emergency Medical Services in The Valley?","type":"textarea","required":true},{"key":"responsibilities","label":"In your own words, what are the main responsibilities of an EMS responder in the city?","type":"textarea","required":true},{"key":"patient_roleplay","label":"A patient is injured and upset when you arrive. How would you approach them and provide professional care through roleplay?","type":"textarea","required":true},{"key":"refusal","label":"How would you handle a patient who refuses medical assistance or does not want to cooperate?","type":"textarea","required":true},{"key":"multiple_calls","label":"You receive multiple emergency calls close together. How would you prioritize your response and communicate with dispatch?","type":"textarea","required":true},{"key":"teamwork","label":"How would you work with LSPD, Fire/Rescue, and other emergency services during a shared incident?","type":"textarea","required":true},{"key":"pressure","label":"How do you stay calm, respectful, and focused during stressful or fast-paced situations?","type":"textarea","required":true},{"key":"confidentiality","label":"Why is patient privacy and professionalism important, and how would you protect confidential information?","type":"textarea","required":true},{"key":"sops","label":"How would you make sure you understand and follow EMS Standard Operating Procedures and department guidelines?","type":"textarea","required":true},{"key":"conflict","label":"If another EMS employee acted unprofessionally or disagreed with you during a call, how would you handle it?","type":"textarea","required":true},{"key":"scene_safety","label":"You arrive at an incident that may still be unsafe. What would you consider before approaching or assisting?","type":"textarea","required":true},{"key":"availability","label":"What days and times are you usually available in the city, and how many hours can you contribute each week?","type":"textarea","required":true},{"key":"final_acknowledgement","label":"I acknowledge that I must follow EMS policies and SOPs, treat people respectfully, protect patient information, and never misuse my EMS position or participate in corruption.","type":"checkbox","required":true}]'::jsonb,
   true,
   now())
on conflict (department) do update
set title = excluded.title,
    description = excluded.description,
    questions = excluded.questions,
    is_open = excluded.is_open,
    updated_at = now();
