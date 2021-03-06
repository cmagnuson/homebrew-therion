class Therion < Formula
  homepage "https://therion.speleo.sk"
  desc "Processes survey data and generates maps or 3D models of caves"
  revision 1

  url "https://github.com/therion/therion.git", :revision => "99e0f08"
  version "5.5.3+99e0f08"

  head "https://github.com/therion/therion.git"
  
  depends_on "pkg-config"
  depends_on "proj"
  depends_on "freetype"
  depends_on "imagemagick"
  depends_on "lcdf-typetools"
  depends_on "vtk"
  depends_on "wxmac"
  depends_on "ghostscript"
  depends_on "libpng"
  depends_on "zlib"
  depends_on "libjpeg"
  depends_on "tcl-tk"

  def install
    inreplace "makeinstall.tcl" do |s|
      s.gsub! "/usr/local/bin", bin
      s.gsub! "/usr/local/etc", etc
      s.gsub! "/Applications", prefix
    end

    etc.mkpath
    bin.mkpath

    #ENV.prepend_path "PATH", "/Library/TeX/texbin:/opt/X11/bin:/usr/local/opt/tcl-tk/bin:/usr/local/bin"
    ENV.prepend_path "PATH", "/Library/TeX/texbin"
    #ENV.prepend_path "PKG_CONFIG_PATH", "/usr/local/opt/proj/lib/pkgconfig"

    ENV.deparallelize
    system "make", "config-macosx"
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats 
    "Loch app is found in #{prefix} Copy #{prefix}/loch.app/ to your /Applications folder if desired"
  end

  test do
    system "#{bin}/therion", "--version"
  end
end
