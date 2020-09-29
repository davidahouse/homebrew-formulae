# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodebuildToMd < Formula
  desc "XCResult converter to simple json"
  homepage "https://github.com/davidahouse/xcodebuild-to-json"
  url "https://github.com/davidahouse/xcodebuild-to-json.git",
      :tag      => "v0.1.0",
      :revision => "74c4237d76970e9f3ee87762705d42ef9895d782"
  head "https://github.com/davidahouse/xcodebuild-to-json.git"

  # depends_on "cmake" => :build
  depends_on :xcode => ["11.3", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodebuild-to-json"
  end
end
