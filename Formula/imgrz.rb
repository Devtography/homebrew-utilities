# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Imgrz < Formula
  desc "Command line tool for batch image resizing"
  homepage "https://github.com/Devtography/imgrz"
  url "https://github.com/Devtography/imgrz/archive/1.0.1.tar.gz"
  sha256 "ace127f25f8fd212b8c9e7d8610bc57db40106ee3ed7ee54cd251d57405e0341"

  depends_on :xcode => ["11.0", :build]
  depends_on "gd"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test imgrz`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
  end
end
