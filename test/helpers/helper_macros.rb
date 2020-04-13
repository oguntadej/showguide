# frozen_string_literal: true

module HelperMacros
  def show_info
    { 'id' => 29, 'url' => 'http://www.tvmaze.com/shows/29/vikings',
      'name' => 'Vikings', 'type' => 'Scripted', 'language' => 'English',
      'genres' => %w[Drama Action History], 'status' => 'Running',
      'runtime' => 60, 'premiered' => '2013-03-03',
      'officialSite' => 'https://www.history.ca/shows/vikings/',
      'schedule' => { 'time' => '22:00', 'days' => ['Wednesday'] },
      'rating' => { 'average' => 8.7 }, 'weight' => 100,
      'network' => { 'id' => 118,
                     'name' => 'History',
                     'country' => { 'name' => 'Canada',
                                    'code' => 'CA' } },
      'webChannel' => nil,
      'externals' => { 'tvrage' => 31_136,
                       'thetvdb' => 260_449, 'imdb' => 'tt2306299' },
      'image' => { 'medium' => 'http://static.tvmaze.com/uploads/images/medium_portrait/214/536315.jpg',
                   'original' => 'http://static.tvmaze.com/uploads/images/original_untouched/214/536315.jpg' },
      'summary' => '<p><b>Vikings</b> transports us to the brutal and mysterious
      world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to
      explore - and raid - the distant shores across the ocean.</p>',
      'updated' => 1_583_094_711, '_
                       links' => { 'self' => {
                         'href' => 'http://api.tvmaze.com/shows/29'
                       },
                                   'previousepisode' => {
                                     'href' => 'http://api.tvmaze.com/episodes/1782548'
                                   } } }
  end
end
