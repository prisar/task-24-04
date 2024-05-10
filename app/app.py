from flask import Flask, request, json
from db_operations import get_contacts, add_pdf_data
from file_operations import extract_text_from_pdf
import os

app = Flask(__name__)

@app.route('/upload', methods=['POST'])
def upload_file() -> str:
    if 'file' not in request.files:
        return json.dumps({'error': 'No file part'})
    
    file = request.files['file']
    
    if file.filename == '':
        return json.dumps({'error': 'No selected file'})

    if file.filename.endswith('.pdf'):
        upload_folder = 'uploads'
        if not os.path.exists(upload_folder):
            os.makedirs(upload_folder)
        file_path = os.path.join(upload_folder, file.filename)
        file.save(file_path)

        text = extract_text_from_pdf(file_path)
        add_pdf_data(text)

        return json.dumps({'success': 'File uploaded and saved successfully'})
    else:
        return json.dumps({'error': 'Uploaded file is not a PDF'})

@app.route('/contacts')
def index() -> str:
    return json.dumps({'contacts_details': get_contacts()})

if __name__ == '__main__':
    app.run(host='0.0.0.0')
