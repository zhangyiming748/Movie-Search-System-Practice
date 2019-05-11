import pymysql
import pymysql as mysql  # pip install PyMySQL Python3的安装方式
# 引入python中的traceback模块，跟踪错误
import traceback
from from_mysql_to_elasticsearch.import_elasticsearch import toES


def GetMySQL():
    # 打开数据库连接
    db = pymysql.connect("localhost", "root", "163453", "douban_movie")

    # 使用cursor()方法获取操作游标
    cursor = db.cursor()
    # SQL 查询语句
    sql = "SELECT * FROM t_doubanmovie"
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        results = cursor.fetchall()
        for row in results:
            mid = row[0]
            mtitle = row[1]
            mdirector = row[2]
            mdate = row[3]
            mtime = row[4]
            mintroduction = row[5]
            # 打印结果
            print("mid=%s,mtitle=%s,mdirector=%s,mdate=%s,mtime=%s,mintroduction=%s" % \
                  (mid, mtitle, mdirector, mdate, mtime,mintroduction))
            toES(mid, mtitle, mdirector, mdate, mtime,mintroduction)
    except:
        print("Error: unable to fetch data")
    finally:
        # 关闭数据库连接
        db.close()
if __name__ == '__main__':
    GetMySQL()