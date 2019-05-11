# coding=UTF-8

from datetime import datetime
from elasticsearch import Elasticsearch
es = Elasticsearch()


def toES(mid, mtitle, mdirector, mdate, mtime,mintroduction):
    doc = [
        {"index": {}},
        {'mid': mid, 'mtitle': mtime, 'mdirector': mdirector, 'mdate': mdate,'mtime':mtime, 'mdate': mdate,'mintroduction':mintroduction}
    ]
    # doc = [
    #     {'index': {'_index': 'indexName', '_type': 'typeName', '_id': 'idValue'}}
    #     {'name': 'jack', 'sex': 'male', 'age': 10}
    #     {'delete': {'_index': 'indexName', '_type': 'typeName', '_id': 'idValue'}}
    #     {"create": {'_index': 'indexName', "_type": 'typeName', '_id': 'idValue'}}
    #     {'name': 'lucy', 'sex': 'female', 'age': 20}
    #     {'update': {'_index': 'indexName', '_type': 'typeName', '_id': 'idValue'}}
    #     {'doc': {'age': '100'}}
    # ]
    es.bulk(index='movietest', body = doc)