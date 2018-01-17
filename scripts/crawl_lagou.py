import scrapy

class CoursesSpider(scrapy.Spider):
    name = 'jobs'

    start_urls = ['https://www.lagou.com/']

    def parse(self, response):
        for course in response.xpath('//li[contains(@class,"position_list_item ")]'):
            yield {
                'name': response.css('div.position_name a::text').extract_first(),
                'salary': response.css('span.salary ::text').extract_first(),
                'requirement': response.css('div.position_main_info span::text').extract_first(),
                'company_name':response.css('div.company_name a::text').extract_first().strip(),
                'location':response.xpath ( '//div[@class="industry wordCut"]/span[3]/text()' ).extract_first (),
                'img_url': response.css('div.clearfix img::attr(src)').extract_first()
            }
