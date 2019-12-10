# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodebuildToMd < Formula
  desc "XCResult converter to markdown"
  homepage "https://github.com/davidahouse/xcodebuild-to-md"
  url "https://github.com/davidahouse/xcodebuild-to-md.git",
      :tag      => "v0.1.0",
      :revision => "152ef26501839d1d40d784506b6429bffd786cc2"
  head "https://github.com/davidahouse/xcodebuild-to-md.git"

  # depends_on "cmake" => :build
  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodebuild-to-md"
  end
end
