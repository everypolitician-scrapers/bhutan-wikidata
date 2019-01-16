#!/bin/env ruby
# encoding: utf-8
# frozen_string_literal: true

require 'wikidata/fetcher'

members = WikiData::Category.new('Category:Bhutanese MNAs 2008–13', 'en').member_titles
members = WikiData::Category.new('Category:Bhutanese MNAs 2013–18', 'en').member_titles
premiers = WikiData::Category.new('Category:Prime Ministers of Bhutan', 'en').member_titles
ministers = WikiData::Category.new('Category:Government ministers of Bhutan', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: members | premiers | ministers })
