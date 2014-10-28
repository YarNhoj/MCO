metadata  :name        => "fkit Agent",
          :description => "Interogate agent for version information",
          :author      => "John R. Ray <jray@shadow-soft.com>",
          :license     => "GPL",
          :version     => "1.0",
          :url         => "johnray.io",
          :timeout     => 10

action "ver", :description => "Gets version information for HDAP/VOCALOS/Puppet Version" do
  display :failed

  output  :value,
          :description => "Value",
          :display_as  => "Value"
end
