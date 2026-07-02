-- ATYAB FRAGRANCE: Public read policy for active products
-- Run this in Supabase SQL Editor after the products table is saved.

alter table public.products enable row level security;

drop policy if exists "Public can read active products" on public.products;
create policy "Public can read active products"
on public.products
for select
to anon
using (active = true);
