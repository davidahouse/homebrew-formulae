# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodebuildToMd < Formula
  desc "XCResult converter to markdown"
  homepage "https://github.com/davidahouse/xcodebuild-to-md"
  url "https://github.com/davidahouse/xcodebuild-to-md.git",
      :tag      => "v0.1.2",
      :revision => "fb82417eb23b88f5a5ea6a87fc1cfd4b4ae378d3"
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
