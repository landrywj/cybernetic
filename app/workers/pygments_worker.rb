class PygmentsWorker
  include Sidekiq::Worker
  #sidekiq_options queue: "high"
  # sidekiq_options retry: false
  
  def perform(snippet_id)
    snippet = Snippet.find(snippet_id)
    request = Net::HTTP.post_form(URI.parse("http://pygments.appspot.com/"), {lang: snippet.language, code: snippet.plain_code})
    snippet.update_attribute(:highlighted_code, request.body)
  end
end
