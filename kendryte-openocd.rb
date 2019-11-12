class KendryteOpenocd < Formula
  desc "Open On-Chip Debugger for the Kendryte K210 AI chip"
  homepage "https://metalcode.eu"
  url "https://github.com/metalcode-eu/kendryte-openocd/archive/v0.2.3.tar.gz"
  sha256 "0728a42478236d2e4732cc65fd787c52889182bf9beb5de029dc08827de264ab"

  depends_on "autoconf"   => :build
  depends_on "automake"   => :build
  depends_on "libtool"    => :build
  depends_on "texinfo"    => :build
  depends_on "pkg-config" => :build
  depends_on "libusb"

  def install
    system "./bootstrap", "nosubmodule" if build.head?
    system "./configure"
    system "make", "install"
  end

  test do
    system "#{bin}/openocd", "--version"
  end
end
