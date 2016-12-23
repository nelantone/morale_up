module QuotesHelper
  # include ActionView::Helpers::Urss

  def random_flickr_rrs
    rss = Urss.at("http://www.flickr.com/services/feeds/photos_public.gne?format=rss_200&tags=landscape&min_taken_date=1479168000&max_taken_date=1481846399&view_all=1&media=photos&orientation=portrait%2Csquare&dimension_search_mode=min&height=1024&width=1024"); true
    rss.entries.sample.medias.first.content_url
  end
end
