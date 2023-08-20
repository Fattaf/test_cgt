# frozen_string_literal: true

require 'pagy/extras/searchkick'
require 'pagy/extras/overflow'
require 'pagy/extras/bootstrap'

Searchkick.extend Pagy::Searchkick

# Optionally override some pagy default with your own in the pagy initializer
Pagy::DEFAULT[:items] = 30 # items per page
Pagy::DEFAULT[:size]  = [1, 4, 4, 1] # nav bar links

# Better user experience handled automatically
Pagy::DEFAULT[:overflow] = :last_page
