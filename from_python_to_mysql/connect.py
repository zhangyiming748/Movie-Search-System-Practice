#!/usr/bin/python3

import pymysql
import pymysql as mysql  # pip install PyMySQL Python3的安装方式
# 引入python中的traceback模块，跟踪错误
import traceback


# 引入sys模块


def mysqlto(movie_id, movie_title, movie_director, movie_date, movie_time, movie_introduction):
    # 打开数据库连接
    db = pymysql.connect("localhost", "root", "163453", "douban_movie")

    # 使用cursor()方法获取操作游标
    cursor = db.cursor()

    # SQL 插入语句
    # title = movie_title
    # director=movie_director
    # introduction = movie_introduction
    sql = "INSERT INTO t_doubanmovie(movieID,movieName, \
           movieDirector, movieDate,movieTime,movieIntroduction) \
           VALUES ('%s', '%s', '%s', '%s', '%s',  '%s')" % \
          (movie_id, movie_title, movie_director, movie_date, movie_time, movie_introduction)
    print(movie_id, movie_title, movie_director, movie_date, movie_time, movie_introduction)
    try:
        # 执行sql语句
        cursor.execute(sql)
        # 执行sql语句
        db.commit()
    except:
        # 发生错误时回滚
        db.rollback()
        print('异常')
        traceback.print_exc()
    # 关闭数据库连接
    db.close()


if __name__ == '__main__':
    mysqlto(movie_id='1', movie_title='a', movie_director='f', movie_date='6', movie_time='11', movie_introduction='k')
    mysqlto(movie_id='2', movie_title='b', movie_director='g', movie_date='7', movie_time='12', movie_introduction='l')
    mysqlto(movie_id='3', movie_title='c', movie_director='h', movie_date='8', movie_time='13', movie_introduction='m')
    mysqlto(movie_id='4', movie_title='d', movie_director='i', movie_date='9', movie_time='14', movie_introduction='n')
    mysqlto(movie_id='5', movie_title='e', movie_director='j', movie_date='0', movie_time='15', movie_introduction='o')
