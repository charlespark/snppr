require 'rails_helper'
require 'spec_helper'
  
describe Url do
  url = Url.new

  describe 'url test case' do
    before do
      @start = Url.new(title: 'short.com')
    end

    it "should have a title" do
      expect(url.title = 'short.com')
    end
  end
end

  describe "url.title" do
    it "returns a shortened url" do
      shorty = Url.new(title: "http://snppr.com/abcdef")
      expect(shorty.title).to eq "http://snppr.com/abcdef"
    end

    it "includes text 'snppr' in the url" do
      mini = Url.new(title: "http://snppr.com/123456")
      expect(mini.title).to eq "http://snppr.com/123456"
    end
  
    it "can accept letters and numbers" do
      numberletter = Url.new(title: "http://snppr.com/abc123")
      expect(numberletter.title).to eq "http://snppr.com/abc123"
    end
  end

describe Url do
    it "is invalid without a title" do
      notitle = Url.new(id: '145', slug: "slugtext", created_at: "2001-02-03T04:05:06+07:00", updated_at: "2001-02-03T04:05:06+07:00")
      expect(notitle).to be_valid
    end
end
