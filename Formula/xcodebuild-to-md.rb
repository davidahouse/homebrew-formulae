# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodebuildToMd < Formula
  desc "XCResult converter to markdown"
  homepage "https://github.com/davidahouse/xcodebuild-to-md"
  url "https://github.com/davidahouse/xcodebuild-to-md.git",
      :tag      => "v0.6.1",
      :revision => "bb84aa0c8816d6480703c50811413dd2c881a2cd"
  head "https://github.com/davidahouse/xcodebuild-to-md.git"

  # depends_on "cmake" => :build
  depends_on :xcode => ["14.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodebuild-to-md"
  end
end
