

def parse_text_table(table_text):
    rows = table_text.strip().split('\n')
    headers = ['Phone#', 'Contact First Name', 'Contact Last Name', 'Contact Designation', 'Contact Email'] #[rows[0].split()[0]] + [' '.join(rows[0].split()[i:i+2]) for i in range(1, len(rows[0].split()), 2)]
    data = [tuple(row.split(maxsplit=len(headers)-1)) for row in rows[1:]]
    data = [row + (None,) * (len(headers) - len(row)) for row in data]
    return headers, data