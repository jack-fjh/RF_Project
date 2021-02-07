import csv
#读取csv文件
def csv_read():
    with open('./data/data.csv') as f:
        reader=csv.reader(f,delimiter=';')
        for line in reader:
            print(line)

#写入文件
def write_csv():
    with open('./data/write_csv_res.csv','w',newline='') as f:
        write_res=csv.writer(f)
        #写入多行
        write_res.writerows(['','hello','world'])
        for x in range(10):
            #写入单行
            write_res.writerow(['','hello','alex'])




# csv_read()
write_csv()

