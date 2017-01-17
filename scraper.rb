#!/bin/env ruby
# encoding: utf-8
# frozen_string_literal: true

require 'wikidata/fetcher'

members = WikiData::Category.new('Category:Members of the National Assembly (Bhutan)', 'en').member_titles
premiers = WikiData::Category.new('Category:Prime Ministers of Bhutan', 'en').member_titles
ministers = WikiData::Category.new('Category:Government ministers of Bhutan', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: members | premiers | ministers })
