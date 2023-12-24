-- 1. Maths with String Manipulations
SELECT bit_length(name) + length(race) calculation FROM first

-- 2. Bit Length
SELECT id, bit_length(name) as name, birthday, bit_length(race) as race FROM first

-- 3. ASCII Converter
SELECT id, ascii(name) as name, birthday, ascii(race) as race FROM first

-- 4. Concatenating Columns
SELECT concat(prefix, ' ', first, ' ', last, ' ', suffix) as title FROM second

-- 5. Padding Encryption
SELECT concat(md5, repeat('1', length(sha256) - length(md5))) as md5,
       concat(repeat('0', length(sha256) - length(sha1)), sha1) as sha1,
       sha256 FROM third

-- 6. Right and Left
SELECT substr(project, 1, :x) as project, substr(address, length(address), length(address) - :y + 1) as address FROM fourth

-- 7. Regex Replace
SELECT project, commits, contributors, regexp_replace(address, '\d', '!', 'g') as address FROM fourth

-- 8. Real Price!
SELECT name, weight, price, round(((price / weight) * 1000)::numeric, 2) as price_per_kg FROM fifth ORDER BY price_per_kg, name
