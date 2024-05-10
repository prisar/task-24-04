from typing import List, Dict
import mysql.connector
from config import config
from utils import parse_text_table

def get_contacts() -> List[Dict]:
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute("""
        SELECT 
            c.`Sl NO`,
            c.`Phone#`,
            c.`Contact First Name`,
            c.`Contact Last Name`,
            c.`Contact Designation`,
            c.`Contact Email`,
            GROUP_CONCAT(i.Interest) AS Interests
        FROM 
            contacts c
        LEFT JOIN 
            interest i ON c.`Sl NO` = i.`Sl No`
        GROUP BY 
            c.`Sl NO`
        """)
    results = [{'sl_no': sl_no, 'phone_no': phone_no, 'first_name': first_name, 'last_name': last_name, 'designation': designation, 'email': email, 'interests': interests} for (sl_no, phone_no, first_name, last_name, designation, email, interests) in cursor]
    cursor.close()
    connection.close()

    return results

def insert_data_into_db(cursor, headers, data):
    insert_query = f"INSERT INTO contacts (`{'`, `'.join(headers)}`) VALUES ({', '.join(['%s']*len(headers))})"
    cursor.executemany(insert_query, data)
    # print(cursor.statement)

def add_pdf_data(table_text):
    headers, data = parse_text_table(table_text)

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    insert_data_into_db(cursor, headers, data)

    connection.commit()
    connection.close()