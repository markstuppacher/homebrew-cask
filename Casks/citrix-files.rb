cask "citrix-files" do
  version "22.2"
  sha256 "389a5c198e9a2153fd28b48412237b332e5abbb8d72bd87a074cf5b467bd8249"

  url "https://dl.sharefile.com/cfmac/Citrix%20Files%20v#{version}%20(14rc1).dmg",
      verified: "dl.sharefile.com/cfmac/"
  name "Citrix Files"
  name "Citrix ShareFile"
  desc "ShareFile is a secure content collaboration, file sharing and sync software that supports all the document-centric tasks and workflow needs of small and large businesses."
  homepage "https://www.citrix.com/products/citrix-sharefile/"

  livecheck do
    url "https://www.citrix.com/downloads/citrix-content-collaboration/product-software/citrix-files-for-mac.html"
    strategy :page_match
    regex(%r{Citrix Files for Mac v(.*)</span>})
  end

  pkg "Install Citrix Files.pkg"

  uninstall script: {
     executable: "#{appdir}/Citrix Files.app/Contents/Resources/uninstall.sh",
     sudo: true
   }

end
