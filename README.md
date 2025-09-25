# datafun-05-sql

This repository contains a small example SQL schema and sample data used for the "Datafun 05 — SQL" exercises.

Repository layout
- `data/` — contains `db.sqlite` (example SQLite DB file) when present.
- `sql_files/create_tables.sql` — CREATE TABLE statements for the sample schema.
- `sql_files/insert_data.sql` — INSERT statements with sample authors and books.
- `requirements.txt` — optional Python packages for helper scripts.

Goals
- Provide a tiny, self-contained example schema (authors, books).
- Offer ready-to-run SQL to create the schema and populate sample data.

Quick setup (Windows PowerShell)

1) (Optional) Create and activate a virtual environment:

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
py -m pip install --upgrade pip
py -m pip install -r requirements.txt
```

2) Run the SQL locally with SQLite (recommended):

```powershell
# Create an empty database file if needed
sqlite3 data\db.sqlite ".quit"

# Apply schema and insert data
sqlite3 data\db.sqlite ".read sql_files/create_tables.sql" ";read sql_files/insert_data.sql"
```

If `sqlite3` is not available, use Python's `sqlite3` module to apply the scripts:

```powershell
py - <<'PY'
import sqlite3
conn = sqlite3.connect('data/db.sqlite')
with open('sql_files/create_tables.sql', 'r', encoding='utf-8') as f:
	conn.executescript(f.read())
with open('sql_files/insert_data.sql', 'r', encoding='utf-8') as f:
	conn.executescript(f.read())
print('Schema and data applied to data/db.sqlite')
conn.close()
PY
```

Quick verification (show a few rows):

```powershell
py - <<'PY'
import sqlite3
conn = sqlite3.connect('data/db.sqlite')
cur = conn.cursor()
cur.execute("SELECT author_id, name FROM authors LIMIT 5")
print(cur.fetchall())
cur.execute("SELECT book_id, title FROM books LIMIT 5")
print(cur.fetchall())
conn.close()
PY
```

Notes and tips
- The SQL files assume an empty DB; re-running them on a populated DB may cause PRIMARY KEY conflicts. Wrap the scripts in a transaction or add IF NOT EXISTS checks to make them re-runnable.
- `requirements.txt` is optional — the examples use only the Python standard library, but you can add packages if you add helper scripts.

