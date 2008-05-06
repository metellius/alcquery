#!/usr/bin/ruby -KU

require 'Qt4'

require 'form.rb'
require 'alcquery.rb'

app = Qt::Application.new(ARGV)

class Vu < Qt::MainWindow

  slots 'on_searchButton_clicked()'
	
  def initialize
	 super
	 @ui = Ui::MainWindow.new
	 @ui.setup_ui(self)

  end
  
  def on_searchButton_clicked
	 result = alcquery(@ui.searchInput.text)
	 html = ""
	 result.each do |r|
		html += r.split("\n").join("<br>")
    end
	 @ui.browser.setHtml(html)
  end

end

v = Vu.new
v.show

app.exec()
