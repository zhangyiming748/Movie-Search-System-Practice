# coding=UTF-8

import requests
from bs4 import BeautifulSoup
import codecs
import time

DOWNLOAD_URL = 'https://movie.douban.com/subject/1292052/'


def downloadmovie_page(url):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'
    }
    return requests.get(url, headers=headers).content


def parse_html(html):
    soup = BeautifulSoup(html, features="html.parser")
    movie_title = soup.find('span', attrs={'property': 'v:itemreviewed'}).getTeXt()
    movie_director = soup.find('a', attrs={"rel": "v:directedBy"}).getTeXt()
    movie_introduction = soup.find('span', attrs={"property": "v:summary"}).getText()
    # return movie_name_list, None


if __name__ == '__main__':
    url = DOWNLOAD_URL
