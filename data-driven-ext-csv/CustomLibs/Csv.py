import csv

def read_csv_file(filename):
    data = []
    with open(filename, 'rt') as csvFile:
        reader = csv.reader(csvFile)
        for row in reader:
            data.append(row)
    return data