class KendryteOpenocd < Formula
  desc "Open On-Chip Debugger for the Kendryte K210 AI chip"
  homepage "https://metalcode.eu"
  url "https://github.com/metalcode-eu/kendryte-openocd/archive/v0.2.3.tar.gz"
  sha256 "0728a42478236d2e4732cc65fd787c52889182bf9beb5de029dc08827de264ab"

  depends_on "make"
  depends_on "libtool"
  depends_on "pkg-config"

  depends_on "autoconf"
  depends_on "automake"
  depends_on "texinfo"
  depends_on "libusb"

  def install
    system "./bootstrap"
    system "./configure"
    system "make", "install"
  end

  test do
    system "#{bin}/openocd", "--version"
  end
end
