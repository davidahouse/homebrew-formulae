# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodebuildToMd < Formula
  desc "XCResult converter to markdown"
  homepage "https://github.com/davidahouse/xcodebuild-to-md"
  url "https://github.com/davidahouse/xcodebuild-to-md.git",
      :tag      => "v0.2.0",
      :revision => "83a3b9c4a72bf5a9b182333b2d6160551582fbdf"
  head "https://github.com/davidahouse/xcodebuild-to-md.git"

  # depends_on "cmake" => :build
  depends_on :xcode => ["11.3", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodebuild-to-md"
  end
end
