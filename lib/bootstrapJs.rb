class BootstrapJsFilter < Nanoc3::Filter

  identifier :bootstrapJs

  def run(content, cmd, params={})
    puts "Processing Bootstrap JS..."
    system "mkdir -p ./output/assets/js"
    system "touch ./tmp/bootstrap.js"

    #system "cat ./content/assets/js/bootstrap/bootstrap-transition.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-alert.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-button.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-carousel.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-collapse.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-dropdown.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-modal.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-tooltip.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-popover.js >> ./tmp/bootstrap.js"
    system "cat ./content/assets/js/bootstrap/bootstrap-scrollspy.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-tab.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-typeahead.js >> ./tmp/bootstrap.js"
    #system "cat ./content/assets/js/bootstrap/bootstrap-affix.js >> ./tmp/bootstrap.js"

    system "./node_modules/uglify-js/bin/uglifyjs -nc ./tmp/bootstrap.js > ./output/assets/js/bootstrap.min.js; rm ./tmp/bootstrap.js"
  end
end
