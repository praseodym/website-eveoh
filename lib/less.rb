class EveohLessFilter < Nanoc3::Filter

  identifier :eveohLess

  def run(content, cmd, params={})
    puts "Running Recess..."
    system "mkdir -p ./output/assets/style; ./node_modules/recess/bin/recess --compress ./content/assets/less/eveoh.less > ./output/assets/style/eveoh.css"
  end
end
