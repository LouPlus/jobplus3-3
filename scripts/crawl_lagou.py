import scrapy


class JobSpider(scrapy.Spider):
    name = 'jobs'
    start_urls = ['https://www.lagou.com/']

    def parse(self, response):
        for job in response.xpath(
                './/ul[@class="clearfix position_list_ul"]/li'):
            yield {
                'name':
                job.css('div.position_name a::text').extract_first(),
                'salary':
                job.css('span.salary ::text').extract_first(),
                'company_name':
                job.css('div.company_name a::text').extract_first().strip(),
                'location':
                job.xpath('//div[@class="industry wordCut"]/span[3]/text()')
                .extract_first(),
                'experience':
                job.css('div.position_main_info span::text').extract_first(),
                'degree':
                job.css('div.position_main_info span:nth-child(2)::text')
                .extract_first(),
                'img_url':
                job.css('div.clearfix img::attr(src)').extract_first()
            }

# scrapy runspider scripts/crawl_lagou.py -o datas/jobs.json
