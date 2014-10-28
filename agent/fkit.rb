module MCollective
  module Agent
    class Fkit<RPC::Agent
      metadata  :name         => "fkit",
                :description  => "Interogate host for information",
                :author       => "John R. Ray <jray@shadow-soft.com>",
                :license      => "GPL",
                :version      => "1",
                :url          => "johnray.io",
                :timeout      => 10

      action "ver" do

				require 'json'
				
				reply[:upcmd] = run("/usr/bin/uptime", :stdout => :uout, :chomp => true)
        
        reply[:vercmd] = run("bash /usr/local/bin/ver", :stdout => :vout)

				ver = JSON.load(File.open("/etc/puppet/deployed_version.json"))
				reply[:redeploy] = ver['site.pp']['redeploy']
				reply[:release] = ver['site.pp']['release']

			end

    end
  end
end

