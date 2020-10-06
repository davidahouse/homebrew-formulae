# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodebuildToRoundup < Formula
  desc "XCResult attachment upload to roundup server"
  homepage "https://github.com/davidahouse/xcodebuild-to-roundup"
  url "https://github.com/davidahouse/xcodebuild-to-roundup.git",
      :tag      => "v0.1.0",
      :revision => "7081d5e38cb58d6f1b8195ed411ece3d3e3fefeb"
  head "https://github.com/davidahouse/xcodebuild-to-roundup.git"

  # depends_on "cmake" => :build
  depends_on :xcode => ["11.3", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodebuild-to-roundup"
  end
end
