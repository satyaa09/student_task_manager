import mysql.connector

def get_database_connection():
    connection = mysql.connector.connect(
        host = 'gateway01.ap-southeast-1.prod.aws.tidbcloud.com',
        user = 'JbZKnGMNVHxx5xo.root',
        password = 'ODz6WuanxGoWIilS',
        database = 'student_task_manager',
        port = 4000
    )
    
    return connection



# def get_database_connection():
#     connection = mysql.connector.connect(
#         host = 'localhost',
#         user = 'root',
#         password = '7447482515',
#         database = 'student_task_manager'
#     )
    
#     return connection


























