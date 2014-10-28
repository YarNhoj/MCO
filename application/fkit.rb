# encoding: utf-8
class MCollective::Application::Fkit<MCollective::Application
  include MCollective::RPC
  description "Run status commands on remote machines"
  usage <<-EOF
    mco fkit [OPTIONS] [FILTERS] <ACTION>
  EOF

  def main
    mc = rpcclient("fkit")
    mc.ver.each do |client|
      
			data = client[:data]
      node = client[:sender]
      puts "Host:     #{node}"
      puts "Uptime:  #{data[:uout]}"
      puts "CPV:      #{data[:release]}"
      puts "LRPV:     #{data[:redeploy]}"
      puts data[:vout]
			puts

    end

    printrpcstats

    mc.disconnect

  end

end
